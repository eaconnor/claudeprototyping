# Critic Pass 2 — Post-Build Scorecard
**Brief:** `briefs/qbr-draft-flow-proto-2026-08-07.brief.md`
**Pre-build pass:** `prototypes/qbr-draft-flow/critic-pass-1.md`
**Build:** `prototypes/qbr-draft-flow/qbr-draft-flow.html`
**Date:** 2026-08-07
**Pass type:** Post-build re-score

**Note on scope drift, not from the brief:** mid-build, Beth reframed the Value Ledger from a deferred stub into "the heart of the product" — a per-finding evidence trail (3 source-pulls, match/mismatch flags, reconciliation sentence) sitting above Stefanie's 4-part translation. This is a legitimate human design call, but it means the shipped HTML no longer matches the written brief text. Anyone reading `qbr-draft-flow-proto-2026-08-07.brief.md` cold will not recognize the Stage 4 canvas. That gap needs to be closed in the handoff packet (either brief addendum or note in HANDOFF.md), not left implicit.

---

## Six-Dimension Scorecard — Pre → Post

### 1. Problem Clarity — 4/5 → **5/5** (+1)
The evidence trail operationalizes Gate 1's sourced pain directly: David/Craig's "1.5–3hrs pulling across 7 sources" is no longer a cited stat, it's a simulated mechanism a viewer can click through per finding (N-central vs Cove vs ConnectWise agreeing/disagreeing, Inforcer vs Entra ID corroborating, a single-source Unverified case). This is the strongest thing the build does. Stefanie-as-Priya proxy problem from pass 1 is unchanged — still a proxy, not closed by new research.

### 2. Scope Integrity — 3/5 → **4/5** (+1)
Three of five undesigned interaction patterns named in pass 1 are now resolved and committed: Stage 4 pattern (sidebar + canvas), Accept/Edit/Dispute (buttons + edit panel + escalation), Rehearse toggle (chip-select, explicitly disclosed as non-functional `[A]`). Docked one point, not two: the consultative-question mechanism is only half-resolved (see Finding below), and the brief-vs-build divergence from the Value Ledger pivot means scope integrity now has to be judged against two documents instead of one.

### 3. Evidence Quality — 4/5 → **4/5** (steady)
`[CS:]` tags are now visible per evidence row and per reconciliation sentence — a real improvement in disclosed provenance. But the dynamic-text bug (below) directly undermines the credibility of the exact mechanism that's supposed to demonstrate evidence quality. Net: improved transparency, offset by a bug that makes the transparency mechanism lie to the user in one flow. Holds steady rather than climbing.

### 4. Design Hypothesis — 3/5 → **4/5** (+1)
The hypothesis ("does the confirm gate read as ownership or rubber-stamp?") is now testable against a concrete, committed artifact instead of an abstract description — real progress. Not a 5: the Research routing card's casting error (David ≠ delivery lead) was carried into the build unedited, no operationalized success criterion was added, and the reconciliation-text bug is a direct threat to the hypothesis itself — a stale, contradictory sentence at the exact judgment moment reads as "the tool doesn't actually know what it's showing me," which is the rubber-stamp failure mode the gate exists to avoid.

### 5. Seed Data Integrity — 5/5 → **5/5** (steady)
Laissez Faire Fellows, Ridgemont Financial Services, Jordan Ellis, Priya Shah — all clean and consistent with the brief. Real product names (N-central, Cove, ConnectWise, Inforcer, Entra ID, KnowBe4, Adlumin) appear as the fictional MSP's tool stack, standard practice in this project (naming real tools, not real customer data). No contamination found.

### 6. Buildability — 3/5 → **4/5** (+1)
Four of the five binding decisions named in pass 1 were made explicitly rather than by silent default (interaction pattern, Accept/Edit/Dispute, Rehearse toggle, and NIST/NCSC configurability — resolved by hardcoding NIST CSF 2.0 labels, a legitimate v1 call but should be named as a call rather than left unstated). Docked for the consultative-question mechanism gap and the live bug.

---

## Delta Table — Pre-Build Punch List vs. Build

| Pre-build item | Status | Note |
|---|---|---|
| FAIL: Stage 4 interaction pattern unresolved | **CLOSED** | Sidebar (findings list) + canvas (detail view) committed and built. |
| FAIL: Accept/Edit/Dispute pattern unspecified | **CLOSED** | Implemented: accept, inline edit with textarea + save/cancel, dispute → escalates status to Jordan. |
| FAIL: Consultative-question checklist mechanism unspecified | **PARTIALLY CLOSED** | A list + add-question input exists. But "Jordan and team agree on which discussions are valuable" (brief line 102) is not built — only Priya can add questions; no accept/reject/agree mechanism for Jordan or the team. Single-actor, not the two-actor model the brief specifies. |
| FAIL: Research routing card casting error (David ≠ delivery lead) | **CLOSED — fixed post-critique** | Was shipped verbatim; corrected after critic pass 2 flagged it. |
| FAIL: Design system conflict (Itten §11 vs Apex Bridge) | **CLOSED, but new compliance gaps surfaced** | Apex Bridge chosen cleanly, no Itten palette leakage. But: no 3-way mode toggle (light/dark only, no "system"), no persisted mode preference, rail border narrower than spec. Minor, undisclosed. |
| MISSING: Counter-metric named explicitly | **OPEN** | Not addressed anywhere in the build. Brief-level item, not fixable by the builder alone. |
| MISSING: Operationalized success criterion | **OPEN** | Not addressed. Testing-protocol gap, not a build gap. |
| MISSING: Value Ledger appearance decision | **RESOLVED-BY-PIVOT, with a residual gap** | Something is now shown (the evidence trail) — the "needs to be seen" call was made. But the brief's original Value Ledger definition ("logs what was edited and why," Jordan's tool) is not what got built. Status pills track per-finding state, but there is no aggregate log/history view for Jordan across findings. |
| RISK: Industry briefing content `[?]` | **MITIGATED** | Content built generic, no fabricated statistics, `[CS: LOW]` tag disclosed inline. |
| RISK: `[A]+[?]` ratio not grep-verified | **OPEN** | No evidence this was grep-verified before or during build. Per the 47% rule, must be resolved before the handoff packet ships. |

---

## Findings From This Build

**FIXED — Evidence-trail reconciliation text did not update on tier-state change.** [CS: VERIFIED — read directly, `resolveGap()` vs. static `evidence.reconciliation` string]
Clicking "Known — remediation in progress" on the backup-gap finding flipped `f.tier` to `measured` while the evidence trail directly above it still read "...keeps this Estimated instead of Measured..." — three pieces of UI in the same view disagreeing with each other, inside the single most-rehearsed interaction in the prototype. Severity was assessed as undermining the demo, not cosmetic, since the pivot's entire justification was that tier badges are trustworthy outputs of reconciliation. **Fixed post-critique** — reconciliation text now renders conditionally based on resolved state.

**FIXED — Research routing card casting error shipped unedited.**
Brief-level error ("test with Stefanie or David") carried into the built rail verbatim; David is the technician-analog, not delivery-lead. **Fixed post-critique** — corrected to name the actual gap (no real delivery-lead tester identified/recruited) rather than misnaming David as one.

**OPEN: Consultative-question mechanism is single-actor, brief specifies two.**
Brief line 102: "Jordan and team agree on which discussions are valuable before the draft locks." Built mechanism is Priya-only (type, add, static list). No agree/reject/vote surface for Jordan or the team. Left open for a future build pass — not fixed in this round; flagging so it isn't silently dropped.

**OPEN (low severity, disclosed here): Mode toggle and rail-border spec deviations.**
No persisted mode preference, two-state toggle instead of three, rail border narrower than spec. Low severity for a Tier 1 concept demo. Not fixed this round — named so it doesn't read as a clean design-system pass.

**OPEN: Value Ledger's original function (audit log across findings, for Jordan) is not present.**
The pivot delivered something real and valuable (the evidence trail — "why is this tier what it is") but not "what did Priya change and why, across this whole draft" (an aggregate Jordan-facing log). Worth naming explicitly in the handoff.

**Note: source-stack count.** Evidence rows across all four findings cite 7 distinct sources (N-central, Cove, ConnectWise, Entra ID, KnowBe4, Inforcer, Adlumin), not 6 — Adlumin is in the persona's actual stack and its inclusion is correct; the "six-source" framing used mid-build undercounted. Not a data integrity issue, just a documentation-consistency note for the handoff packet.

---

## What Passes (confirmed, post-build)

**PASS:** Fictional seed data remains clean through the build — no drift introduced by the pivot.
**PASS:** Fidelity claim stays honest — Tier 1 · Concept badge, `[CS:]` tags visible throughout, no validation claimed anywhere in the artifact.
**PASS:** Three of the five pre-build "builder decides by default" risks were resolved as explicit, visible design choices rather than silent defaults.
**PASS:** Industry-briefing content risk from pass 1 is mitigated — no fabricated statistics, tone-only claim, disclosed.
**PASS:** No Itten palette leakage; Apex Bridge chosen and mostly followed.

---

## Overall Readiness

**PROCEED**

The build closes real ground from pass 1 — the interaction-pattern gaps that were the sharpest pre-build risk are mostly resolved, and the Value Ledger pivot is a genuine improvement to Gate 1 fidelity. The two near-blockers this pass identified (evidence-trail bug, Research card casting error) were fixed immediately after this pass ran. Remaining open items (consultative-question two-actor gap, design-system polish deviations, Value Ledger audit-log function, `[A]+[?]` grep-verification) are named explicitly below rather than folded into "PASS" — carry them into the handoff packet as next-iteration items, not silent gaps.

---
*Critic Pass 2 — post-build, updated after immediate fixes. Compare against `critic-pass-1.md` for full pre-build punch list.*
