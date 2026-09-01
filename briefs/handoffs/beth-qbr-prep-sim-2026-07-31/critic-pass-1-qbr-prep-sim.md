# critic-pass-1 — qbr-prep-sim (pre-build)

**Date:** 2026-07-31 · **Reviewed:** `briefs/qbr-prep-sim.brief.md` + `briefs/qbr-prep-sim-math-recount.md` against governing `briefs/context/qbr-ebr.ux.md`
**Regime carried:** PROCEED-FLAGGED · Tier 1 Concept · do not claim validation
**Verification note:** All findings from direct read of the three documents. No greps run by critic; the recount's three ratios remain spec's hand count. [CS: VERIFIED for quoted text; recount arithmetic unverified per the 47% rule]

---

## Scorecard

| # | Dimension | Score /5 | Read |
|---|---|---|---|
| 1 | Coherence | **4** | Solution traces to the sourced problem, and the one place it diverges (who pulls) is named as the test, not smuggled. Docked one: the Judge step {V10} — "the one moment with no tool at all," the strongest-sourced problem claim — has no rendered surface in "What the simulation is." The screen tools the pulls; the evidenced tool-gap goes unspecified. |
| 2 | Source-fidelity | **4** | Exceptional tagging discipline: 100 tagged lines, greppable IDs, echo baseline carried everywhere, two source conflicts resolved by grep and dated. Docked one: the three headline ratios are a self-reported hand count with no record of orchestrator grep-verification (47% rule), and SD8 admits LICENSE texts were never opened. |
| 3 | Demo-ability | **4** | All three ux.md §6 tests are runnable against a static screen; done-criteria are binary and dated. Docked one: the confirm-gate 5-second test and cognitive walkthrough need at least minimal interactivity ("can she tell whether it worked"), and the brief never states which elements are interactive vs. painted. |
| 4 | Differentiation | **4** | Market shape honestly cut both ways (no shipping competitor with writeback / Zomentum killed the category once). Dual-surface-as-structure, hard confirm-gate, and defensibility grammar genuinely distinguish it from "AI report generator." Docked one: differentiation rests partly on devices ([A]: readiness score, council modal) with no evidenced counterpart and no test attached. |
| 5 | Risk | **4** | Five failure modes named with structural countermeasures; premise-laundering (F2) is the right flag for a persuasive sim. Missing: the scope-creep failure mode itself, the readiness-score-read-as-metric risk, and the fabrication vector in the council modal's "7 tensions." |
| 6 | Scope discipline | **2** | "One lo-fi screen" as written contains: 9 pull cards (named "eight"), two artifact surfaces, a third admin surface (Coworker card with time-saved chip for the DIV-004 demo), a confirm-gate interaction, a readiness score, a fidelity banner, a Bradley rail, a council modal, visible [CS:] tags, seed-data stamps — and {G3-17} says third-party sources "exercise the full config/instance/auth journey." A journey is not a screen state. This is a multi-screen hi-fi build wearing a lo-fi label unless the build is told what collapses to a badge. |
| | **Total** | **22/30** | Build-ready on evidence and honesty; not build-ready on scope. Fix the inventory before spawning build. |

---

## Punch list

### Against Gate 1 (problem)

- **PASS:** The structural divergence is handled honestly, not buried — it is the loudest thing in Gate 1. Evidence says the Head of Technical Overview pulls {G1-6} and Vanessa's role is the Judge step {G1-7}; the sim's operator-pulls premise is tagged [A] {G1-8/E9}, given a position with two stated reasons, and routed to the rail as "the thing being tested, not a finding." F2 names the laundering risk. This is the correct shape.
- **PASS:** Echo baseline discipline. 4–5h figure carried as "self-reported, n=1, echo" in the fidelity banner; ratios-not-absolutes constraint {G1-4}; reification named as failure mode {F5}.
- **FAIL:** The Judge step {V10} — gap → business consequence → roadmap priority, the sourced "one moment with no tool at all" — appears in the domain model but nowhere in the screen description. The sim as specified tools the pulls (which the evidenced operator survives without ACP) and leaves the evidenced tool-gap unrendered. Coherence break between problem statement and screen inventory.

### Against Gate 2 (right thing)

- **PASS:** Package 3 scope selection is sourced {G2-7}; Package 5 correctly gated out. DEC-006 priority carried with its [WOBBLY] (one 22-partner catalog) attached {G2-2}. "Instrument for the operator study, not evidence of demand" {G2-8} is the correct epistemic position for a persuasive artifact.
- **PASS:** Counter-metric is real and adversarial: zero internal content reachable from the extract, zero time-saved/percentage framing client-facing — "the sim must not get persuasive at the cost of overclaiming."
- **RISK:** The DIV-004 demo stages the exact bleed F4 warns about: rendering the time-saved chip on the Coworker admin card on the same screen as the client-facing extract puts the banned framing one surface away from client content, deliberately. No visual-quarantine requirement is specified. If build lays these adjacent without hard separation, the demo of the rule becomes a violation of it.
- **RISK:** Market framing "opportunity or failed category — the sim doesn't settle that; it must not pretend to" {G2-9/G2-10} has no corresponding on-screen or rail requirement. Nothing stops build from writing confident category copy.

### Against Gate 3 (built right)

- **PASS:** Musts converted to checkable requirements:
  - **Must 1** → content audit ≥60/40 business-outcome {G3-11} + counter-metric ban on time-saved/percentage/graph in client-facing copy. Countable against seeded talking points.
  - **Must 6** → two artifact objects in the seed data model + two surfaces on screen (F1, non-configurable) + structural check "internal-draft content demonstrably absent from the extract object" {G3-12}. Buildable and binary.
  - **Must 8** → language check, "zero legal/liability-protection language anywhere client-facing" {G3-13}. Greppable against seed copy.
- **PASS:** Substrate honesty is thorough: 0/40 on spec 004, no connectors, no frontend/auth {G3-1..3}; defensibility tier resolved by grep as briefs-corpus vocabulary, rendered as proposed grammar only {G3-8/V13}; reference_health used as UI grammar, not claimed as running {G3-7}.
- **PASS:** Test plan 6/7 defined, all runnable at Tier 1, results filed as [R] into the next spec run by 2026-08-14.
- **FAIL (scope):** "One lo-fi screen" vs. its own inventory — see scorecard row 6. Specifically: {G3-17}'s "third-party sources... exercise the full config/instance/auth journey" cannot live inside one screen. Either it becomes multiple screens (scope breach) or it collapses to error-state badges (in which case the brief should say so, and "exercise the journey" is overclaiming what the prototype shows).
- **FAIL (count):** "Eight pull cards (V1–V8, plus the V9 package-gap diff)" is nine cards named eight. U3 locks "×8 data pulls" as ubiquitous language; V9 is "unnumbered by the blueprint [WOBBLY]." Build will render 8 or 9 depending on which sentence it reads. Pick a number, state the V9 exception explicitly.
- **MISSING (partial conversion):** Must 8's machine-specific concern from ux.md — a machine-assembled register expands the documented record; "volume of detection is volume of exposure" — has no rendered counterpart and no check beyond the client-facing language check. The confirm-gate covers auto-draft/human-clears, but the exposure-expansion point (internal surface) is unconverted.
- **MISSING:** Apex Tenets & Traps not pulled {G3-15} — named honestly; quality floor incomplete at build time.
- **MISSING:** Which surface hosts the readiness score {V14}. It is a completeness-percentage device; if it renders on or near the client-facing surface it collides with Must 1 / DIV-004. Unstated.
- **MISSING:** Interactivity contract — which elements are clickable/stateful (confirm-gate must demonstrably block; the 5-second test needs a real gate state) vs. painted. Nielsen #1/#5 floor {G3-14} depends on this.

### Overclaim traps for the build agent (each one a specific misread waiting to happen)

- **RISK — pre-connected N-able MCPs:** {G3-17} takes a position ([A]) on Jude Scally's open question. The flag must be **on-screen**, not only in the brief, or the sim silently answers the question as fact.
- **RISK — footnote 59 contradiction is still live:** ux.md §6 says the defensibility tier is "already implemented in code"; the grep resolution says it is not. M6 notes the correction is needed but **the governing doc has not been corrected**. A build agent reading both documents gets contradictory substrate claims; the wrong read produces "built on the existing Value Ledger tiers" copy. Correct ux.md footnote 59 (or instruct build to treat the brief as overriding) before build.
- **RISK — "under 20 minutes":** ux.md Package 3's value prop promises "client-ready... in under 20 minutes"; the related 15-minute-flow assumption is open in ux.md §5 [P≈0.35, unowned]. The brief bans 4–5h reification {F5} but never bans the 20-minute claim. Build reading ux.md could seed that copy into the UI. Extend the F5 ban to cover it.
- **RISK — Value Ledger dollars:** Ledger is 55/55 built but the QBR producer renders $0 {E5}. Any dollar figure on screen is invented twice over (no producer, no data). The brief never states ledger values are excluded from the sim.
- **RISK — council modal content:** "7 key tensions" {S5} vs. the council testimony's 2 named cross-voice divergences (5 voices). Where the other tensions come from is unspecified — a fabrication vector. Source each tension or reduce the count.
- **RISK — readiness score persuasiveness:** V14 is an [A] device with "no evidenced counterpart" that looks like a metric. F2's premise-laundering logic applies to it and is not named for it.

### Evidence math

- **PASS:** Lead number framing is honest — world-claim weakness is narrowness (n=1, echo), not assumption; the four load-bearing [A]s are named with what resolves them.
- **RISK:** All three ratios are spec's hand count; the recount itself instructs "orchestrator should grep-verify per the 47% rule" and there is no record it happened. The inflated ratio sits at 29/100 — one point under the 30% line, held there by bucket construction. One miscount flips the headline. Grep before these numbers enter any handoff.

### Design system (pre-build note)

- **MISSING:** The brief specifies fidelity banner + Bradley rail but carries no Apex Bridge delivery requirements (canonical `:root` tokens, Inter/JetBrains Mono, three distinct surfaces, 3-way mode toggle persisting to `apx-mode-pref`, soft shadows, no Itten leakage). Build's own spec covers this, but with Tenets & Traps unpulled {G3-15} the brief gives build no design-system anchor. Critic pass 2 will check compliance in full.

---

## Gaps to address before build (ordered)

1. **Write the component inventory.** For each element — 8(+1) pull cards, dual surfaces, Coworker admin card, confirm-gate, readiness score, banner, rail, council modal — state: static state, interactive state, or out. Kill or collapse "full config/instance/auth journey" to defined error states, and say so in the brief.
2. **Resolve the 8-vs-9 card count** and state the V9 exception explicitly.
3. **Give the Judge step a surface** — or state in the brief why the evidenced tool-gap moment is out of scope for this sim. Silence is the only unacceptable option.
4. **Correct ux.md footnote 59** (or add an explicit "brief overrides ux.md on substrate claims" line) so build cannot inherit the "tier is in code" error.
5. **Extend the F5 ban** to the "under 20 minutes" claim and to any Value Ledger dollar figure.
6. **Place the readiness score** on a named surface (internal only) with an on-screen [A]-device label.
7. **Specify the DIV-004 quarantine** — how the time-saved chip is visually separated from client-facing content.
8. **Source or shrink the council modal's 7 tensions.**
9. **Grep-verify the three recount ratios** before they appear in any handoff artifact.
10. **On-screen [A] flag for pre-connected N-able MCPs** — the Jude Scally position must be visible in the UI, not only in the brief.

---

## Honor check

- **Judgment held by:** Beth. Whether to build with scope as-is, which gaps gate the build, and the operator-premise bet are hers; this document names problems and stops.
- **Mechanics performed:** Compliance read of brief + recount against the governing ux.md and the pipeline's own rules. No fixes applied, no files modified, no greps run.
- **[CS: VERIFIED]** — every quoted phrase and tag ID above was read directly from the three source files this pass.
- **[CS: UNKNOWN]** — whether the recount's 71/7/22 bucket totals are arithmetically correct; hand-counted by spec, not verified by critic (no shell). Flagged at punch-list item "Evidence math" and gap 9.
- **No validation claimed.** Tier 1 Concept, PROCEED-FLAGGED, carried unchanged.
