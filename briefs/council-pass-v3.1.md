---
artifact: "Council pass — owens panel against v3.1 synthesis prototype"
type: "design review · owensed testimony"
date: "2026-05-28"
target_artifact: "prototypes/band-x-idea-chorus-v3.html (v3.1 patched build, 3,111 lines)"
spec_reference: "briefs/band-x-idea-chorus-synthesis.brief.md"
methods_reference: "briefs/methods-library-matrix.md"
voices: 11 (CHTR · SIGN · PORT · FEAT · POS · LAND · JOBS · NEEDS · JRNY · ECON · CNPT)
purpose: "Beth's question — what does the council add that the proofreader-critic cannot? What's the richness? Each cluster voice testifies in owensed format (Sign · Hypothesis · Kill criterion · Force level · Evidence · Cannot see)."
status: "captured · informs Phase 2 workshop expansion + open research questions panel"
---

# Council Pass — Owens Panel against v3.1

*Eleven cluster voices. Each owens itself. No synthesis. Voices may contradict — that's the point.*

---

## CHTR — Owen / Theory of Change / Moore

**Sign** — Charter Traversal Chain shows 3 green / 2 yellow rungs. Defining Statements present (ADL-1839). "Company Strategy" rung yellow because `n-able-strategy-context.md` is a placeholder. The proposition "analysts investigate incidents, not alerts" is sourced to Hilda Mar 2026.

**Hypothesis** — The Charter exists *operationally* (someone wrote Defining Statements) but does not exist *strategically* (we have not loaded n-able's FY27 strategy doc, so we cannot say at what force level this Initiative sits in the company's portfolio). Moore positioning statement was never drafted: *"For [target customer] who [unmet need], Alpha is a [category] that [key benefit] unlike [alternative]."*

**Kill criterion** — If Beth drafts a Moore positioning statement and it parses cleanly, Charter is real. If she cannot fill "unlike [alternative]" without bluffing, Charter is a wish.

**Force level** — Must.

**Evidence** — [CS: VERIFIED] for ADL-1838 priority 2.57 and Defining Statements existence; [CS: UNKNOWN] for whether they're Must vs. Should vs. Ought.

**Cannot see** — Charter cannot see whether the *team* believes the Charter. Defining Statements on paper do not equal organizational consent. CHTR reads documents, not rooms.

---

## SIGN — Peirce / Tavory-Timmermans / Owen Design Factor / Cynefin

**Sign** — One named customer (Hilda, Mar 2026). One internal escalation pattern ("3-4 tickets per incident"). The prototype repeats Hilda's name three times in the rail as if repetition were corroboration. No SIGN voice has independently testified; Bradley *speaks* SIGN but does not *poll* SIGN.

**Hypothesis** — This is a single-sign confirmation pattern. Peirce calls abduction the inference to the *best* explanation, but "best" requires alternative hypotheses tested against the sign. Tavory/Timmermans require *alternative casing* — what else could explain "3-4 tickets per incident"? Operator training gap? Alert tuning regression? Tooling fatigue independent of Alpha? None are surfaced.

**Kill criterion** — Three independent signs (one customer + one analyst + one quant from Snowflake on actual ticket-per-incident ratios pre-Alpha) all pointing the same direction. Currently: one customer quote, repeated.

**Force level** — Must. Bluntness precondition is technically passed but only by the thinnest margin.

**Evidence** — [CS: VERIFIED] Hilda quote in ADL-1838; [CS: LOW] generalization to "the market signals this."

**Cannot see** — SIGN cannot see whether the analyst saying "3-4 tickets per incident" is generalizable or specific to one MSP's tier-1 staffing model. Peircean abduction is mute about sample.

---

## PORT — Doblin / Ansoff / Innovation Ambition

**Sign** — Alpha sits under ADL-1838 "Expanded Multi-Event Correlation" theme. No Doblin 10 Types classification anywhere in the prototype. No Ansoff matrix position. No Innovation Ambition placement (core / adjacent / transformational).

**Hypothesis** — Alpha looks like Doblin Type 7 (Product Performance) plus Type 9 (Customer Engagement, via the story view). It is *not* a Type 1 (Profit Model) or Type 2 (Network) play. That distinction matters because Product Performance innovations are easy to copy and easy to ship — the competitive moat is the data flywheel, not the UI. The Epic doesn't claim a flywheel.

**Kill criterion** — If Doblin sorts Alpha to ≥3 types with one of them being Type 1/2/3 (structural moat), the portfolio classification holds. If it sorts to Type 7 only, this is a feature, not an innovation play, and PORT downgrades from Must to Should.

**Force level** — Should.

**Evidence** — [CS: MEDIUM] Doblin classification inferred from prototype surface; [CS: UNKNOWN] for actual portfolio placement, because that's the missing PORT-cluster work.

**Cannot see** — PORT cannot see whether *engineering can execute* the type it classifies. Doblin reads intent, not capacity.

---

## FEAT — Kano / Blue Ocean ERRC

**Sign** — The prototype's "What you nailed" lists "47 → 12" consolidation, story view, "Why 94" scoring, Hilda receipt. Implicit Kano placement: consolidation = performance attribute (more is linearly better), trust UI = must-be (its absence destroys satisfaction), story narrative = excitement (delighter if it works, neutral if it doesn't). No Blue Ocean ERRC grid run. What did Alpha *eliminate*? What did it *raise*? What did it *reduce*? What did it *create*? The Epic says Out of Scope: customer UI, real-time, Abacus replacement, partner self-service — that's elimination by negation, not ERRC discipline.

**Hypothesis** — Trust UI is being treated as a Should Have in the Epic, but Kano analysis would classify it as must-be. Must-be features absent are dissatisfiers; their presence is invisible. Demoting trust UI to Should is the Kano error the prototype documents (Clash 2) without naming as a Kano error.

**Kill criterion** — Run a 5-point Kano questionnaire with 10–12 MDR analysts on (a) consolidation ratio, (b) trust UI, (c) narrative, (d) real-time vs. time-boxed. If trust UI scores must-be, the Epic's Should designation is falsified.

**Force level** — Must (for trust UI specifically).

**Evidence** — [CS: HIGH] Kano theory; [CS: UNKNOWN] empirical Kano scores on these features for this segment.

**Cannot see** — Kano cannot see whether a delighter today is a must-be in 18 months. Christensen sees that; Kano is static.

---

## POS — Moore Crossing the Chasm / Christensen Disruptive

**Sign** — "Alpha (RACE) · Black Team Beta" — internal beta with named MDR teams. Three personas are all internal (Carla, Raj, Daniel) plus DS (Zachary). No customer in the personas. No "innovator" / "early adopter" / "early majority" segmentation. Moore positioning statement absent (per CHTR voice above). Christensen disruption read absent: is this sustaining (better incident handling for existing MDR customers) or disruptive (something that could let smaller MSPs do what only big SOCs can do)?

**Hypothesis** — Alpha is *sustaining* innovation for n-able's existing MDR customer base. That is fine, but Moore would say the adoption arc for sustaining innovation in a mature category requires a *whole product* story (integrations, training, support, pricing). None of that is in the prototype. The rail says "Show it for alignment. Don't ship as design." — correct caution, but the Chasm reading suggests an alignment audience that is *internal* will never expose the Chasm-crossing risk.

**Kill criterion** — Show the prototype to one early-majority customer prospect (not Hilda — Hilda is innovator-adjacent, she gave feedback). If they understand the value in under 90 seconds without an n-able SE present, Moore reads green.

**Force level** — Should.

**Evidence** — [CS: MEDIUM] Moore framework; [CS: UNKNOWN] adoption-stage classification for this segment.

**Cannot see** — POS cannot see whether the internal alignment work was sufficient even if external adoption fails. Sometimes you ship into the Chasm on purpose.

---

## LAND — Kumar Mode 2 / Porter / Wardley

**Sign** — No competitive map. No Wardley evolution axis (genesis / custom / product / commodity). No Five Forces read. The Epic names "Huntress" as a disruptive entrant in `methods-library-matrix.md` notes, but Huntress does not appear in the v3 prototype. Arctic Wolf, CrowdStrike Falcon Complete, Sophos MDR, Red Canary — none appear. The rail's "What will hurt you" is *internal* (untested narrative, force-evidence mismatch, attribution wrong) — never *external* (a competitor ships this in Q3).

**Hypothesis** — The LAND voice has not been convened. **This is the loudest absence in the prototype.** Wardley would place "AI-assisted incident triage" somewhere between *Custom* and *Product* on the evolution axis right now; in 18 months it is *Product* (table stakes); in 36 months it is *Commodity*. If Alpha's MDR beta lands in Q3 2026 and CrowdStrike ships equivalent functionality in Q4 2026, Alpha is a fast-follow, not a differentiator. That changes the entire Charter force level.

**Kill criterion** — Build a Wardley map of the MDR analyst's value chain. If "AI scoring + narrative + consolidation" is *Custom* on the map and competitors are still in *Genesis*, Alpha has a 12–18 month lead. If competitors are already in *Custom*, lead is 0–6 months and the project should be re-scoped.

**Force level** — Must.

**Evidence** — [CS: UNKNOWN] competitive landscape; [CS: LOW — outside training window] for current Q1–Q2 2026 competitor moves.

**Cannot see** — LAND cannot see whether the market *wants* the differentiation that the map reveals. Wardley shows shape; it does not show demand.

---

## JOBS — Christensen / Ulwick

**Sign** — JTBD canvas exists in the workshop modal. JTBD cluster status badge shows "empty" in the T2 rail. The proposition is "MDR analyst investigates incidents, not alerts." Functional job: triage faster with fewer false escalations. Emotional job: feel in control during a 2 a.m. surge. Social job: not be the one who missed the breach. The prototype names the functional job clearly. The emotional and social jobs are *implied* (the "alert fatigue is emotional, not operational" note in Clash 3) but not surfaced as JOBS testimony.

**Hypothesis** — Alpha is hired to *reduce the felt density of incoming signal* so the analyst can do the actual investigative job. The competitor being fired is *the analyst's own coping strategy* (clicking through alerts faster, learned numbness). That's the more honest competitor than another vendor's product.

**Kill criterion** — Ask 10–12 MDR analysts: *"What did you do yesterday to manage alert volume?"* If the dominant answer is a workaround (filter rules, ignore-lists, end-of-shift triage backlogs), Alpha competes with the workaround, not with CrowdStrike. If the dominant answer is "I used tool X," Alpha competes with tool X.

**Force level** — Must.

**Evidence** — [CS: VERIFIED] Hilda quote names the job at customer level; [CS: UNKNOWN] analyst-level JTBD interview data.

**Cannot see** — JOBS cannot see the *organization's* job (Adlumin Inc.'s revenue, retention, NPS). Christensen interviews the user, not the buyer.

---

## NEEDS — SDT (Deci/Ryan) / Maslow

**Sign** — Trust UI ("Why 94" bars) is in the prototype. Autonomy: analyst can approve / escalate / verify travel — choices preserved. Competence: scoring math is visible, so analyst can learn the pattern. Relatedness: the "Originator: Beth · Contributors: Bradley council" line is in every clash card — the work is attributed, the analyst is not alone.

**Hypothesis** — SDT reads green on the surface. *But* the rail blurb for Daniel ("You can OVERRIDE these — name yourself on the artifact and ship") creates an autonomy-by-coercion pattern: you may override, but it's logged, and the logging is the social pressure. SDT distinguishes autonomy-support from controlled-autonomy. Bradley's voice may slide into controlled-autonomy when the persona is Daniel.

**Kill criterion** — Run the prototype past Daniel's actual analog (the senior PM who said "I don't need design or research"). If their first response is "I'll override — what's the process?", autonomy holds. If their first response is "this is a guilt-trip dashboard," autonomy is violated.

**Force level** — Should.

**Evidence** — [CS: HIGH] SDT theory; [CS: UNKNOWN] empirical autonomy-support reading on this specific UI.

**Cannot see** — SDT cannot see hierarchy. Maslow would say analyst safety (job security if the model is wrong and they trusted it) is more basal than autonomy. **SDT and Maslow diverge on the trust UI** — this is a decision, not a gap. SDT reads trust UI as competence-support; Maslow reads it as safety-need (the analyst's job is at risk when the model is wrong).

---

## JRNY — Kumar Mode 3 / 5Es / Service Blueprint

**Sign** — Service Blueprint canvas exists in workshop; cluster status "empty." 5Es canvas exists; "empty." Mode 3 ethnography of MDR analyst workflow not done (Net CX Impact card says so explicitly). The prototype renders *one screen* of the analyst journey — incident detail view. No before (how did analyst get here?) or after (what happens when they click Escalate?). No frontstage/backstage split for the SOAR isolation event.

**Hypothesis** — JRNY is structurally empty. The prototype is a screen, not a journey. Shostack's Service Blueprint would ask: when SOAR isolates host-east-09 in 38 seconds, who is notified? Customer? Customer's IT? The customer's IT manager at 2 a.m.? Is that a Net Good or a Net Negative experience for them? The prototype shows Net CX Impact = UNKNOWN, which is honest — but the design diagnostic check #2 *requires* a journey map before that question can be answered.

**Kill criterion** — Service Blueprint drawn for current state + future state. If three handoffs surface that weren't in the prototype (analyst → customer IT · SOAR → audit log · model → DS retraining loop), the prototype is journey-incomplete in a known way.

**Force level** — Must.

**Evidence** — [CS: VERIFIED] absence of Service Blueprint in current artifacts; [CS: UNKNOWN] what the Blueprint will reveal.

**Cannot see** — JRNY cannot see the *AI handoff* as a separate frontstage/backstage event. Shostack 1984 predates AI; the human-AI handoff is a JRNY blindspot the rubric should patch.

---

## ECON — Value-based pricing / Price corridor / Economic buyer

**Sign** — Carla is "Initiative Owner." Hilda is "customer feedback." Raj is MDR inheritor. Daniel is senior PM. Zachary is DS+Eng. **No economic buyer appears anywhere in the prototype.** Acme Bldg Supply is named as the fictional customer in the demo data. Who at Acme bought MDR? CISO? IT Director? Owner-operator? The buying motion is invisible. No price corridor. No value-based pricing argument — Alpha "saves analyst time" but the saved-time-to-revenue calculation is absent.

**Hypothesis** — The prototype confuses *end-user value* with *buyer value*. Hilda the end-user loves the consolidation. The CISO who renews the MDR contract cares about: cost-per-incident, breach-prevention claim defensibility, audit-log completeness, contractual SLA on isolation time. None of these are in the prototype's value claim. "47 → 12 alerts" is a metric an analyst would screenshot; it is not a metric a CISO would underwrite a renewal on.

**Kill criterion** — One conversation with one Acme-equivalent CISO. Ask: *"What would make you not renew?"* If the answer is "missed breach," Alpha's value prop is about defensibility — which is not what this prototype demonstrates. If the answer is "analyst attrition," Alpha is about retention — and the prototype is half-pointed at that but doesn't say so.

**Force level** — Must.

**Evidence** — [CS: UNKNOWN] economic buyer for Adlumin MDR; this is a research gap.

**Cannot see** — ECON cannot see whether the buyer *should* be the buyer. Sometimes the analyst-as-buyer (PLG bottoms-up) is the right motion; ECON would push toward CISO-as-buyer by default and could mis-route Alpha into a top-down sale it can't survive.

---

## CNPT — Kumar Mode 5 / Mode 6 / Owen Quality Pyramid

**Sign** — Five hotspots are five concept choices: incident story view, transparent scoring panel, what/why/next narrative, customer-facing surface (collision), UX attribution row. Each is a single instantiation. No Mode 5 concept generation surfaced (where are the rejected alternatives?). No Mode 6 evaluation against alternatives. Owen Quality Pyramid not run (does this Solution Element satisfy Function-level, then Need-level, then Value-level?). The clash cards critique each hotspot but never test it against a sibling concept that was considered and dropped.

**Hypothesis** — The five hotspots are *first-instinct concepts*, not *evaluated concepts*. Mode 6 says: for any concept that ships, you should be able to name two alternatives you rejected and why. The prototype cannot do this for any of the five hotspots. That doesn't mean the concepts are wrong — it means they are *unexamined*.

**Kill criterion** — For each hotspot, list two alternatives considered and rejected with reason. If Beth + Alaina can produce that list in 30 minutes, CNPT is implicit-but-real and just needs to be documented. If they cannot, the concepts are unexamined.

**Force level** — Should.

**Evidence** — [CS: HIGH] Owen Mode 5/6 theory; [CS: UNKNOWN] whether alternatives were considered offline and never logged.

**Cannot see** — CNPT cannot see whether a *better* concept exists that nobody thought of. Mode 5/6 evaluates the considered set; it is mute about the unconsidered set.

---

## What the council added

The proofreader-critic catches mechanical gaps — missing hotspot, empty save loop, broken skip-risk row.

The council catches **epistemological gaps the rubric structurally cannot detect from its own outputs**:

- A single sign repeated three times is not corroboration (SIGN)
- No economic buyer named is not the same as a buyer not existing (ECON)
- A Wardley map absent is not a competitive read deferred — it is a competitive read *unmade* (LAND)
- Five hotspots without rejected alternatives are first-instinct concepts, not evaluated ones (CNPT)
- Trust UI absent is a Kano *must-be* failure, not a Should Have demotion (FEAT)

The council also surfaces a genuine voice-disagreement — **SDT and Maslow read the trust UI differently** (competence-support vs. safety-need) — that the mechanical critic flattens into "trust UI is Should, should be Must" and loses the deeper question of *which need it actually serves*.

---

## Follow-up actions surfaced by the council (for next-iteration synthesis)

These are not in scope for the current v3.1 patch. They inform Phase 2 workshop expansion + open research questions panel + strategy/company layer.

| Voice | Action | Force | Owner candidate |
|---|---|---|---|
| LAND | Build Wardley map of MDR analyst value chain | Must | Beth + Alaina + competitive intel |
| ECON | Identify Acme-equivalent CISO; ask "what would make you not renew?" | Must | Sales + Julian |
| JOBS | 10–12 analyst interviews on "what did you do yesterday to manage alert volume?" | Must | Julian (NN/g 10-12 AI floor) |
| FEAT | 5-point Kano questionnaire with 10–12 MDR analysts on trust UI · narrative · real-time · consolidation | Must | Julian |
| CHTR | Draft Moore positioning statement; check "unlike [alternative]" fills cleanly | Must | Beth + Raj |
| SIGN | Three independent signs (customer + analyst + Snowflake quant on pre-Alpha ticket-per-incident) | Must | Scout + Julian + DS |
| JRNY | Service Blueprint of current + future state · Mode 3 ethnography 3-5 sites | Must | Alaina + Julian |
| CNPT | Per hotspot: name two rejected alternatives + reason | Should | Beth + Alaina (30 min) |
| PORT | Doblin 10 Types classification of Alpha (does it sort to Type 1/2/3 or only Type 7?) | Should | Beth + product |
| POS | Show prototype to one early-majority customer prospect (not Hilda) without n-able SE present | Should | Sales + Julian |
| NEEDS | Resolve SDT/Maslow disambiguation on trust UI · interview competence-frame vs safety-frame | Should | Julian |

---

*Council pass captured 2026-05-28. 11 voices. 11 testimonies. 11 traditions. 11 blindspots. Beth reads the transcript and finds the innovative space.*
