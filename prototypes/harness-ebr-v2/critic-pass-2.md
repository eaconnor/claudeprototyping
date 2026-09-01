# Critic Pass 2 — Harness EBR v2 (Post-Build)

**Reviewing:** prototypes/harness-ebr-v2/harness-ebr-v2.html (1648 lines, final state after 3 build iterations) against briefs/harness-ebr-v2-2026-08-13.brief.md and prototypes/harness-ebr-v2/design.md
**Stage:** Session B, step 5 of §9b. This scores the shipped artifact, re-using critic-pass-1.md's exact section structure (Gate 1 / Gate 2 / Gate 3 / Design System Compliance — four named dimensions, no numeric scale). The task framing for this pass referenced "6 dimensions"; critic-pass-1.md defines four. Scoring against what pass-1 actually used, not inventing two more.
**Confidence regime in force:** PROCEED-FLAGGED. Not relitigated here — this pass checks whether the build honored what PROCEED-FLAGGED authorized, not whether the authorization itself was correct.

---

## Gate 1 — Problem: real and sourced, or assumed?

PASS: The core hypothesis (cycle 2+ costs the same as cycle 1 absent cycle memory) is made *visible*, not just claimed — the "Compounding-asset payoff" panel in Stage 3 (`renderCompoundingPayoff`) shows Pemberton (cycle 3, fewer live Asks) side by side with Ashgrove (cycle 1, all four SHORTs still live). This is a genuine translation of Gate 1's finding into an interactive artifact, not decoration.

PASS: The fidelity banner and Bradley rail correctly refuse to claim the payoff panel demonstrates the OKR's 45-minute target — "it does not demonstrate a validated 45-minute prep time; see the fidelity banner" is stated directly in the panel copy. The unverified headline stats (3h / 1.5–2h / 80%→50%) are confined to the Bradley rail with a `CS: MEDIUM` tag and do not appear as confident on-screen numbers in the main stage content — this resolves a RISK named explicitly in critic-pass-1.

FAIL: Stage 1's copy states "This table is the same computation Stage 0's onboarding pass produced — not a separately-seeded static screen. Each client's tier and flag count trace back to the mapping + connector reads shown in Onboard & Customize." This is false as built. `CLIENTS` (the Stage 1 data) is a fully static hardcoded array with no runtime read of `ftuxConnectorState` or anything else Stage 0 produces. The numbers were hand-matched by the author to look consistent (FTUX's Pemberton pull results say "3 flagged," CLIENTS says `flagged:3`) but there is no actual data pipeline connecting them — skip every FTUX connector and Stage 1 renders identically. This is the exact shape of Failure Mode 1 (depicting a capability that doesn't exist) applied to the onboarding→portfolio linkage the brief named as the Stage 1 gap ("Currently disconnected in v1"). The build's on-screen claim that this was fixed is itself the inaccuracy.

RISK: n=1 anchoring persists into the build essentially unchanged from pre-build — Holt/Marcus/Vanessa's exact 8-tab structure and tool stack are now rendered with enough interaction fidelity (drag-drop, live connector-pull animation, a working CSV export) that a test participant is more likely, not less, to read Technica-specific structure as sector-standard. Higher build fidelity increases this exact pre-build risk rather than mitigating it.

## Gate 2 — Right thing: does this advance the mission, is the counter-metric protected?

PASS (routing, not resolution): The three Ten Types gaps named in critic-pass-1 (Profit Model, Network, Brand — absent, not `[?]`) are correctly *not* resolved by the build (a build can't resolve a strategy gap) but are correctly carried forward as a named, unresolved item in the Product routed card ("Decide whether commercial capture... is scoped now or deferred"). This is the right move for a build agent to make with a gap it cannot close.

FAIL — new, introduced by build, not inherited from the brief: The brief's counter-metric is explicit: "standing-acceptance integrity must not degrade." Stage 4's default review-depth mode ("Looks good — quick skim," the mode the app loads into on first render: `reviewDepth: "looks-good"`) suppresses the acceptance-record capture entirely. In `deviationQueueHTML()`, the who/when/why/expiry fields only render when `ans==="accept" && !compact` — i.e., only in "Fine tooth comb" mode. In the default mode, accepting a deviation shows a bare `ACCEPT` pill and nothing else. A practitioner using the default view can accept a Part 7 deviation — "the one that matters," "this is where nearly all of Marcus's judgment lives" per the KIT table — without ever being asked who/when/why or whether the reason has an expiry. This is not a pre-existing brief gap; it's a design decision made during build that puts the counter-metric's own protected mechanism behind a toggle defaulted off.

RISK: The chokepoint durability risk named pre-build (the notebook is the one differentiator; HaloPSA/Inforcer/N-central could ship the same feature) is unchanged by the build and is honestly restated in the Bradley rail's "what will hurt you" list ("The one differentiator — the notebook — is the one thing not built"). Naming without resolving is appropriate here; flagging that it is, in fact, still true post-build.

## Gate 3 — Built right: tested how, by whom, what counts as done?

PASS: The single largest pre-build FAIL — "make the notebook's non-existence visible... zero concrete UI pattern... build agent will invent the pattern" — is resolved with an actual, consistent, four-state ladder (Ask → Learn(recorded) → Kit/Automate) applied identically across all four SHORTs (Parts 8, 13, 14, 27), plus a fifth, visually distinct Draft status for carry-forward guesses. This is a genuine close of a build-blocking gap named in critic-pass-1.

PASS: The confirm-gate itself is implemented correctly at the mechanism level — `recordShortAnswer()` writes instantly (no gate), `confirmShortFetch()` requires a separate explicit click before the rung advances to Kit/Automate. This matches the brief's core requirement: "the confirm step gates the fetch behavior, not the recording."

RISK: If the free-text source-name field in the Ask prompt is left blank, `recordShortAnswer()` silently substitutes the scripted `NAMED_SOURCES[partId]` value rather than blocking submission or showing an empty state. A facilitator watching a real practitioner use this cannot distinguish "typed a real answer" from "clicked through without answering" — both produce an identical, plausible-looking recorded source.

FAIL: `DRAFT_ITEMS` (Stage 4) and `KIT_PARTS[].state` (Stage 3) are two unconnected data structures describing the same parts (9 and 24). Part 9 is permanently `state:"raw"` in Stage 3's Risk Review tab regardless of what happens in Stage 4's Draft queue. Confirming a Draft item in Stage 4 changes nothing about how that same part renders in Stage 3. The single-source-of-truth requirement implied by "a part is not usable until it passes through all five [PICKING] steps" is not actually enforced across stages — it's simulated independently in each.

MISSING: The brief's "Required UI behaviors" section calls out a specific artifact — "Cycle memory diff: what was committed last cycle, what closed, what is still open" — for Part 27 distinctly from the generic SHORT treatment. The build gives Part 27 the same generic Ask/Learn/Kit ladder as Parts 8, 13, 14, plus one line of prose in the automate-box ("Composed automatically from last cycle's filed deck... assembles the diff itself") — but no actual diff view (a list of prior commitments with closed/open/superseded status) is ever rendered. The specific artifact named in the brief doesn't exist; a narrative description of it standing in for it does.

RISK: The Marcus/Vanessa dialogue feature (Task 2) is gated to `tabId==="risk" && state.client==="pemberton"` only — disclosed honestly in a code comment, but not surfaced anywhere in the UI itself or the Bradley rail's "what will hurt you" list. A test participant who switches to any other client and looks for this feature will find nothing, with no on-screen explanation that it's Pemberton-only.

RISK: CSV export for any client other than Pemberton falls back to bare KIT part names with no values (`partsForTab(tabId).map(p=>p.name)`). The on-screen UI discloses this ("full figures... built out for Pemberton & Associates only") but the disclosure does not travel into the exported file itself — a CSV for Ashgrove/Brightwell/Corven can be shared or screenshotted with no indication it's a topic list, not data.

## Design system compliance (Apex Bridge — Apex 2.0 per design.md)

PASS: Brand purple `#8500cc` correctly sourced and used throughout (`--brand`), not the Apex v1 blue and not Band Protocol/Itten. This directly resolves the pre-build FAIL/RISK named twice in critic-pass-1 (zero operational Apex spec; documented project history of guessing this exact value wrong before).

PASS: Inter (UI/body) + Manrope (headers) loaded via Google Fonts, matching design.md's explicit recommendation ("Manrope for hero/section headings, Inter for all component/body/UI text"). Radius scale (2/4/8/16/999) matches design.md's observed scale exactly.

FAIL: JetBrains Mono is used extensively (`--font-mono`, applied to stage eyebrows, part numbers, ladder nodes, `[CS:]`/`[A]` tags) despite design.md stating explicitly: "No monospace typeface found in the 2.0 file... v1 has `apx-font-jetBrains-mono`... different collection, do not borrow." The build's own CSS comment discloses this ("mono is Band Protocol convention, not Apex-sourced") but the instruction it's working around said not to borrow it, and it's borrowed anyway. Disclosed honestly; still a direct instruction violation, not a gray area.

MISSING: No 3-way mode toggle (light/dark/system) and no `apx-mode-pref` persistence exist anywhere in the build. Defensible given design.md's own finding that Apex 2.0 dark-mode values were inaccessible — but this is not named as an open gap anywhere in the shipped artifact (fidelity banner, Bradley rail, or footer). A gap silently absorbed reads differently from a gap named.

RISK: Several color tokens are defined in `:root` but never actually used in the rendered UI — `--high`/`--high-soft` (#c9740f) is defined but deviation risk-coloring uses `var(--critical)` for "high" risk, not `var(--high)`; `.persona-strip`/`.persona-card` and `.tt-icon` CSS classes exist with no corresponding markup anywhere in the six stage renderers. Not a design-system violation per se, but indicates either an abandoned feature from an earlier iteration or dead code shipped in the final file.

PASS: Topbar (dark gradient, 2px brand-purple bottom border) and Bradley rail (violet `--rail-border`, 4px left border, inset glow) are both correctly disclosed as "Band Protocol convention... not Apex-verified" rather than presented as if sourced from the Apex 2.0 pull — honest provenance-tagging, consistent with this project's `[CS:]` discipline.

---

## Delta Table — Pre-build (critic-pass-1) vs. Post-build (critic-pass-2)

| Dimension | Pre-build (critic-pass-1) | Post-build (critic-pass-2) | What changed |
|---|---|---|---|
| Gate 1 | PASS on sourcing/timestamps; RISK on n=1 anchoring un-mitigated | PASS carries forward; **new FAIL**: Stage 1 makes a false "computation is linked" claim on-screen; n=1-anchoring RISK is *worse*, not better, because build fidelity increased | Compounding-payoff panel is a genuine win; onboarding→portfolio linkage claim is not actually true as built |
| Gate 2 | FAIL: Ten Types gaps (Profit Model/Network/Brand) absent, not flagged; FAIL: counter-metric named with no build requirement to protect it | Ten Types gap correctly routed forward (not resolved, appropriately so); **new FAIL**: default UI mode ("Looks good") lets standing-acceptance capture be skipped entirely — the counter-metric is now actively degradable by a shipped interaction, not just unaddressed | Build introduced a new counter-metric risk it didn't inherit — this is worse than the pre-build state, which only lacked a protection, not an active bypass |
| Gate 3 | FAIL (build-blocking): "make the notebook's non-existence visible" had zero UI spec | **RESOLVED**: four-state ladder + distinct Draft status, applied consistently across all 4 SHORTs | This is the single clearest gap-closure in the whole build |
| Gate 3 (secondary) | MISSING: Part 27 cycle-memory diff had no concrete artifact named | Still MISSING: Part 27 gets the same generic ladder as the other 3 SHORTs; no actual diff view built | Not resolved — the brief's specific ask (a diff, not a status ladder) still doesn't exist |
| Design system | FAIL (build-blocking): zero operational Apex spec, high risk of repeating "guessed wrong" history | **RESOLVED**: correct purple, correct fonts (Inter/Manrope), correct radius scale, honestly tagged provenance throughout | This is the second clearest gap-closure — design.md did its job |
| Design system (secondary) | Not assessed pre-build (no token sheet existed to check against) | **new FAIL**: JetBrains Mono borrowed from Apex v1 despite design.md's explicit "do not borrow" instruction (disclosed, not corrected); **new MISSING**: no mode toggle, not named as a gap | New findings only visible once there was a design.md to check the build against |

**Net trend:** The two build-blocking gaps named in critic-pass-1 (SHORT-state pattern, Apex token spec) are both genuinely resolved — this is real, substantive work, not cosmetic. But the build introduced two new findings that are arguably more serious than what they replaced: a false on-screen claim about Stage 0→Stage 1 data linkage (Gate 1/Failure Mode 1 territory), and a default-mode UI path that can bypass the counter-metric's own protection mechanism (Gate 2, and this one didn't exist as a risk before the build — it was created by it).

---

## Punch List — Post-Build

**PASS**
- SHORT-state ladder (Ask → Learn(recorded) → Kit/Automate) plus a visually distinct Draft status, applied identically across all four SHORTs — closes critic-pass-1's build-blocking Gate 3 gap.
- Confirm-gate mechanism (`recordShortAnswer` = instant record, `confirmShortFetch` = separate gated promotion) matches the brief's specified behavior, not just its shape.
- "Cannot tell" is genuinely non-defaulted, selectable, and visually distinct (`pill-cannottell`) — never collapsed into accept/reject.
- Apex 2.0 brand purple (`#8500cc`), Inter/Manrope typography, and radius scale correctly sourced from design.md and consistently applied — closes critic-pass-1's build-blocking design-system gap.
- Unverified headline stats (3h / 1.5–2h / 80%→50%) are confined to the Bradley rail with `CS: MEDIUM`, never rendered as confident numbers in the main stage content.
- Vanessa's tabs (Agenda, Forward Intelligence, Referrals) render with equal visual weight to Marcus's and are honestly marked "no tool path" where true — closes a pre-build MISSING item.
- Ten Types gaps (Profit Model/Network/Brand) correctly routed forward via the Product card rather than silently dropped or falsely resolved.

**FAIL**
- Stage 1's on-screen claim ("the same computation Stage 0's onboarding pass produced") is false — `CLIENTS` is a static array with no runtime connection to Stage 0's connector-pull state. This is the build claiming a fix to a gap the brief explicitly named (onboarding→portfolio disconnection) that does not actually exist in the code.
- Default review-depth mode ("Looks good — quick skim") allows a Part 7 deviation to be Accepted without capturing who/when/why/expiry — the exact standing-acceptance integrity fields the brief's counter-metric protects. This is a new risk introduced by the build, not inherited from the brief.
- `DRAFT_ITEMS` (Stage 4) and `KIT_PARTS[].state` (Stage 3) are disconnected data structures for the same parts (9, 24) — a part's status differs depending on which stage is showing it, undermining the "a part is not usable until it passes through all five steps" sequencing the brief specifies.
- JetBrains Mono is used throughout despite design.md's explicit instruction not to borrow it from the Apex v1 token set. Disclosed in a code comment; the instruction was still not followed.

**MISSING**
- No actual cycle-memory diff view for Part 27 (list of prior commitments with closed/open/partly-done/superseded status) — the brief names this specific artifact distinctly from the generic SHORT pattern; the build gives it the same generic treatment as the other three SHORTs, with narrative prose standing in for the artifact.
- No 3-way mode toggle / `apx-mode-pref` persistence anywhere, and this omission is not named as a gap in the fidelity banner, Bradley rail, or footer — a silently absorbed gap rather than a stated one.
- The Marcus/Vanessa dialogue feature is scoped to one client (Pemberton) with no in-UI indication of that scope for a tester exploring other clients.
- Exported CSVs for non-Pemberton clients carry no in-file indication that their contents are generic topic labels, not actual figures — the on-screen disclosure doesn't travel with the artifact.

**RISK**
- Higher build fidelity (working drag-drop, animated connector pulls, real CSV export) increases the pre-build n=1-generalization risk rather than mitigating it — a more convincing demo is more likely to be read as sector-standard by a test participant from a different MSP.
- Blank submissions on the SHORT "name a source" field are indistinguishable from real answers once recorded (both silently resolve to the same scripted `NAMED_SOURCES` value) — a usability-test facilitator cannot tell engagement from click-through.
- Several defined design tokens (`--high`/`--high-soft`) and CSS classes (`.persona-strip`, `.persona-card`, `.tt-icon`) are unused in the final markup — indicates either an abandoned feature from an earlier build iteration or dead code, not confirmed which.
- The structural notebook-ownership gap (Structure = unknown, Gate 2) is unchanged and correctly restated in the Bradley rail, but nothing about three build iterations has moved this any closer to resolution — worth naming again now that three iterations have passed without touching it.

---

**Net assessment:** The two items critic-pass-1 flagged as build-blocking are genuinely resolved, not papered over — that's real. But the build introduced two findings of comparable or greater severity than what it fixed: an on-screen claim about data linkage that isn't true (Stage 0→Stage 1), and a default UI path that can bypass the brief's named counter-metric protection (standing-acceptance integrity). Both are more serious than typical prototype gaps because they are actively misleading rather than honestly incomplete — the opposite of the honesty-over-fidelity standard this brief explicitly sets as its own bar (Failure Mode 1). Both should be named to Beth before this is shown to anyone outside the pipeline as a "directional test" artifact, regardless of Tier 1 Concept labeling.
