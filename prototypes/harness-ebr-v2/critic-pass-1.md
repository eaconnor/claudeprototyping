# Critic Pass 1 — Harness EBR v2 (Pre-Build)

**Reviewing:** briefs/harness-ebr-v2-2026-08-13.brief.md, tempered by council-testimony.md (6 voices) and math-recount.md (grep-verified evidence ratio)
**Stage:** Session A, step 3 of §9b. Nothing built. This scores the spec's readiness to hand to Session B's build agent — not working HTML.
**Confidence regime in force:** PROCEED-FLAGGED (Beth's authorization). Not relitigated here.

---

## Gate 1 — Problem: real and sourced, or assumed?

The core finding is sourced in the interviewee's own words and correctly tagged. n=1, named as a limit rather than hidden behind it.

PASS: Problem statement traces to a direct quote (SRC-U-009, 38:01, 46:59–47:54) with timestamps, not paraphrase.
PASS: Generalization risk stated as `[?]` three times (pattern-holds-elsewhere, David's estimate representative, 8-tab structure sector-standard) rather than folded silently into the problem statement.
RISK: n=1 anchors the prototype to one MSP's exact tab structure and tool stack (council, Disruptive Innovation + Failure Mode 3). If Session B builds a hi-fi surface this convincing, a future test participant from a different MSP may read Technica-specific structure as sector-standard — contaminating the very validation session Gate 3 says hasn't been scheduled yet.

## Gate 2 — Right thing: does this advance the mission, is the counter-metric protected?

Mission fit is asserted (`[A]`, kitting framing) and plausible, but the brief's own Ten Types pass has a hole council caught and the author didn't close.

FAIL: Three of Ten Types — Profit Model, Network, Brand — are entirely absent from Gate 2, not marked `[?]`. Channel and Structure got the honest "undecided" treatment; these three didn't get any treatment. Council: "not flagged [?], just absent" — that's a bigger gap than the two the brief does name, because it means the brief cannot currently say whether the underlying win, if built, is commercially capturable by anyone.
FAIL: Counter-metric is named ("EBR output quality must not decline; standing-acceptance integrity must not degrade") but no build requirement operationalizes protecting it. Part 7's acceptance-record fields (who/when/why/expiry) partially cover standing-acceptance integrity — that's real. Nothing in the brief protects or even measures output-quality decline; it's not resolvable by build alone, but the brief doesn't say so — it states the counter-metric and moves on.
RISK: The chokepoint that would make this defensible (the notebook) is unowned (Structure = `[?]`) and unbuilt in v2. Three council voices (Disruptive Innovation, Value Chain, Ten Types) scored Neutral specifically because nothing in the brief shows HaloPSA, Inforcer, or N-central are structurally unable to ship the same feature. This doesn't block Session B's build — it's a mission-durability risk that outlives this prototype.

## Gate 3 — Built right: testable against the defined success metric, tested how, by whom?

This is the weakest gate for build-readiness, and it's weak in two different ways: what counts as done is unspecified, and one of the four central UI requirements is unspecified at the level a build agent needs.

FAIL: "Make the notebook's non-existence visible, not depict it as ready" (Failure Mode 1, and repeated at Parts 8/13/14/27 in the KIT table) is stated three times and given zero concrete UI pattern. No component name, no visual state, no distinction rule versus "Reconciled" or "Raw." This is aspirational language pretending to be a spec line. A build agent handed this brief alone will invent the pattern — meaning Session B's SHORT-state treatment is Session B's own decision, undocumented as such, not something the spec actually specified.
MISSING: Testing plan, success criteria, test participants, and validation session are all `[?]` — Gate 3's own "what counts as done" section admits none of it is defined. Not a build blocker for a Tier 1 Concept prototype, but it means Session B cannot ship a "ready to test" claim, only a demo artifact — the handoff packet must say this plainly, not softly.
MISSING: A specified human-override path for Stage 2's nudge cadence. Council names this a live, unresolved divergence (Service Blueprint treats it as settled; SDT reads it as a live autonomy gap). The brief doesn't pick a side — Session B will have to, and whichever way it goes is an undocumented decision unless named at build time.
RISK: Per-part staleness (GOOD FOR column) is self-admittedly authored, not sourced ("those columns were largely authored, not sourced" — standing `[A]` on the whole column). SDT: a wrong-direction staleness signal is worse than no signal because it trains false confidence. The brief's only stated mitigation is "must be named for the test facilitator" — a facilitator instruction, not a UI behavior. Nothing in "Required UI behaviors" requires the UI itself to mark GOOD FOR values as estimated rather than measured.
RISK: The three most load-bearing stats in the brief (3h total prep, 1.5–2h David's portion, 80%→50% business case) are each flagged in math-recount.md as "verify exact figure against source before quoting downstream" and have not yet been verified as of this pass. If Session B renders these on-screen as confident numbers without verification or a `[CS:]` tag, the prototype presents unverified figures with the visual authority of validated data — precisely the failure the 47% rule exists to catch.
RISK: Big Map JSON (Stage 3–5 spatial/interaction reference) was not found at its expected path. Blueprint text is the only source for the PICKING sequence's layout. Session B has no prior-art artifact to build against for this stage and will be designing interaction structure from prose, not spec.

## Design system compliance (Apex Bridge — n-able/Adlumin)

Nothing built, so this section checks whether the spec gives Session B enough to comply — not whether compliance was achieved.

FAIL: The brief's entire Apex instruction is one clause in `machine_behavior`: `"no Itten palette — Apex design system"`. Zero token names, zero typography spec, zero component/surface references, zero mode-toggle requirement. Measured against critic.md's own checklist (canonical `:root` token block, Inter + JetBrains Mono, `--radius-*` corners, three distinct surfaces with named tokens, 3-way mode toggle persisting to `apx-mode-pref`), the spec operationalizes none of it.
MISSING: No Apex token/typography/component reference file is identified anywhere in this session's input chain. CLAUDE.md §11 ("Design System Reference") documents only the Itten palette as "locked — do not deviate" — that section is the one part of CLAUDE.md that actively contradicts this build's requirement. A build agent reading CLAUDE.md and this brief back to back gets one explicit, detailed, "locked" palette (Itten) and one four-word negative instruction (not-Itten) with nothing positive to replace it.
RISK: Per user memory (`project_apex_bridge_verification`), this exact failure has happened before on this project: "brand was guessed blue, real is purple; two unreconciled Apex gens (v1/2.0)." Handing Session B a build instruction of "use Apex, not Itten" with no token sheet reproduces the known failure condition — either a guessed/wrong Apex palette, or a silent fallback to Itten by habit since Itten is the only fully-specified system in reach.

---

## Punch List — prioritized, for Session B

**PASS**
- Problem statement sourced to direct interview quotes with timestamps; generalization limits named as `[?]`, not hidden.
- Stage 5 correction (David frontstage AND backstage) is sourced and specific, not decorative — a real blueprint fix per council.
- "Cannot tell" as a first-class, non-defaulted UI state is concrete enough to build as stated — no interpretation needed.
- Tool-stack conflicts resolved before this brief was written (uSecure not KnowBe4, HaloPSA not ConnectWise, NCSC not NIST) — removes rework risk for Session B.
- PROCEED-FLAGGED and the 60% `[A]+[?]` ratio are named at the top of the brief, not buried in an appendix.
- Fictionalization rule for David and Craig stated explicitly with the seed-data rule.
- Stage 0 onboarding (FSN-82692) is pre-existing spec, not invented for this brief — reduces Session B's design surface by one full stage.

**FAIL**
- Ten Types gap pass omits Profit Model, Network, and Brand entirely — not flagged `[?]`, just missing. Fix requirement: name is not "fix," but Session B's handoff must carry this forward as an unresolved Gate 2 hole, not silently absorb it into "not in scope."
- "Make the notebook's non-existence visible" has no specified UI pattern despite being stated three times in the brief. Build agent will invent the pattern; the brief did not supply one.
- Vanessa's tabs (Agenda/part 25, Forward Intelligence/parts 22–24, Referrals/part 26) are present in the 28-part table but absent from "What the prototype must demonstrate" — the section that actually tells Session B what to build only enumerates David's stages/tabs in detail.
- Apex design-system instruction in `machine_behavior` is a four-word negative ("no Itten palette") with no positive specification — insufficient for a build agent to comply against critic.md's own Apex checklist.

**MISSING**
- Concrete SHORT-state visual pattern (component name, state distinct from Reconciled/Raw) for Parts 8, 13, 14, 27. Instruction for Session B: define ONE pattern — e.g., a locked/grayed card state with an inline label reading "Requires cycle-memory notebook — not built" — and apply it identically to all four SHORT parts. Do not let four different SHORTs get four different ad-hoc treatments.
- Fictional Vanessa persona card, built with the same visual weight as David's, and an explicit "no tool path — human judgment only" treatment applied to Tab 1 (Agenda, part 25), Tab 7 (Referrals, part 26), and a distinct Forward Intelligence panel (parts 22–24). Without this, the 8-tab structure the brief claims to prototype is built at roughly 5-tabs' worth of fidelity.
- Confirmation of whether "Vanessa" is a real participant name requiring the fictionalization rule (like David, Craig) or an internal role-placeholder already safe to use as-is. The brief's seed-data rule names David and Craig explicitly and is silent on Vanessa.
- Explicit Apex token/typography/component spec sheet for Session B — colors mapped to `--bg-app` / `--bg-surface` / `--brand` / `--alpha-accent` equivalents, Inter + JetBrains Mono confirmation, `--radius-*` scale, three-surface definition (topbar/canvas/Bradley rail), 3-way mode toggle persisting to `apx-mode-pref`. This does not exist anywhere in the brief, council testimony, or CLAUDE.md as currently written.
- A stated decision on Stage 2's human-override path for nudge cadence (named live divergence, SDT vs. Service Blueprint) — Session B needs one answer, not silence.
- A stated decision on whether commercial capture (Profit Model) is a Session A/B concern or deferred until the notebook itself is scoped (named live divergence, JTBD/Ten Types vs. Disruptive Innovation/Value Chain).

**RISK**
- Unverified prep-time stats (3h / 1.5–2h / 80%→50%) are the brief's most load-bearing numbers and are explicitly flagged "verify before quoting downstream" — not yet verified as of this pass. If Session B renders them on-screen without verification or a `[CS:]` tag, the prototype visually asserts validated numbers that are not validated.
- GOOD FOR staleness windows are self-admittedly authored, not sourced, and nothing in "Required UI behaviors" requires the UI to mark them as estimates. A confidently wrong staleness signal does more damage to David's trust in the tool than no signal at all (SDT, this brief's own council pass).
- No verified spatial/interaction artifact (Big Map JSON) exists for the Stage 3–5 PICKING flow. Session B is designing layout from blueprint prose with no prior-art reference, which increases the odds the build invents structure beyond what the spec actually authorized.
- Given this project's documented history of guessing Apex wrong (brand guessed blue, was purple; two unreconciled Apex generations), a build instruction with no token sheet reproduces the known failure condition rather than avoiding it.
- Hi-fi visual polish on a 60% `[A]+[?]` evidence base risks reading as "done" to stakeholders regardless of the Tier 1 Concept badge — a documented pattern risk in this pipeline, not unique to this brief, but worth naming going into a hi-fi rebuild specifically.

---

**Net assessment for Session B:** proceed per Beth's PROCEED-FLAGGED authorization — that call is made and not being relitigated here. But two items on this list are build-blocking in practice, not just noted: (1) the SHORT-state visual pattern has zero specification and will otherwise be improvised per-part inconsistently, and (2) the Apex design-system instruction has zero operational content and risks a wrong-brand or Itten-habit fallback. Both should be resolved with a concrete answer before Session B's build agent starts, not discovered mid-build.
