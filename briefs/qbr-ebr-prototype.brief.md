---
feature: "QBR/EBR AI-assisted prep — dual-surface draft + confirm-gate (Tier 1 concept prototype)"
gate: 30
owner: "Beth"
problem_statement: "MSPs hand-assemble every client review from scratch, every time — hours of senior time per client, no consistent evidence framework, no number they can defend if a client or an incident pushes back. [A synthesis, grounded in [CS: HIGH — Guidepoint]-sourced tension; see Candidate 2, acp-problem-statement-2026-07-28.md]"
okr_objective: "[?] Not stated anywhere in the source corpus. No named OKR exists for this offering yet."
okr_key_result: "[?] Unknown. Candidate metrics exist but are unowned/untargeted: prep-time reduction from 3–7h/quarter [R — Stefanie Hammond, vendor-relayed, directional only] or EBRs Delivered vs. Planned/Quarter [D — already a KPI tab in the real template]. Neither has an owner or a number attached to it in any source."
counter_metric: "[?] Not named in any source. Proposed here as a hypothesis, not evidence: business-value framing quality (Must 1 content-ratio) degrading as automation increases — i.e., don't let 'faster prep' quietly relax the framing bar. Flag, don't build against, until sourced."
idea_score: "[PENDING — no 1-20 rubric exists anywhere in the source material; fabricating one would violate the no-invented-evidence rule. Nearest real number, different methodology: Idea Chess survival ~45–50% for this scope (Candidate 2); ~0.9% naive for Package 3; ~0.43–0.64% for Package 5. Not convertible to a 1-20 score without inventing a conversion."
evidence_sources:
  - "briefs/context/qbr-ebr.ux.md"
  - "briefs/context/acp-ux.md"
  - "briefs/acp-problem-statement-2026-07-28.md"
  - "Executive Business Review Template 1.xlsx (Stefanie Hammond, primary source, [CS: VERIFIED])"
  - "briefs/concept-sketches-qbr-2026-07-20.md (Idea Chess pass, referenced not re-run)"
status: "draft"
domain_model:
  entities:
    - "EBR/QBR Session — the meeting instance; cadence-linked to a specific Client"
    - "Client (Account) — the MSP's end customer; has its own cadence, risk register, roadmap"
    - "Risk Register — Threat/Risk, ID Date, Risk Level, Existing Controls, Treatment Plan, Progress Status, Residual Risk, Risk Owner [D — Stefanie Hammond's own template, primary source]"
    - "Technology Roadmap"
    - "PSA Ticket — created from a Post-Meeting Action Item"
    - "Operator / Delivery Lead — non-technical account owner of the session (Vanessa Chart persona) [R — verified]"
    - "Value Ledger — existing producer (52/52 built per Idea Chess pass), currently renders $0, needs a QBR-specific producer wired in [D]"
    - "EOS Scorecard — pipeline log (opportunities raised/closed)"
  value_objects:
    - "Defensibility Tier — Measured / Benchmarked / Estimated / Unverified; already implemented over the `baseline_source` field in the Value Ledger [D]"
    - "Cadence — client-tuned interval, not fixed-quarterly [A/should, per Vanessa Chart + 3 independent consultancies]"
    - "Content Ratio — business-outcome sentences vs. technical-metric sentences; the literal unit Must 1's Built-in Test greps [D]"
    - "Prep Freshness Window — was the register/roadmap updated within a defined pre-meeting window, or stale/templated [D — test defined, window itself undefined, [?]]"
    - "Confirm-gate Decision — operator's active clear of an Unverified-tier or upsell-flagged draft claim before client export [D]"
  services:
    - "BuildRiskRegister — pull entries from PSA/RMM (production-line); narrative synthesis (overall rating, priority calls) stays judgment (hybrid) [D — job-shop classification already done in source]"
    - "BuildTechRoadmap — same hybrid split as above"
    - "ScheduleReview — into PSA prep queue, cadence-aware [D]"
    - "DraftTalkingPoints — business-value-framed generator; output must pass Must 1 (content-ratio) and Must 8 (no-overclaiming) before reaching ExportClientFacingSurface"
    - "ConvertActionItemsToTickets — explicit instruction in the real template ('turn every action item into a ticket'); the clearest automation candidate in the whole spec [D]"
    - "ClearUnverifiedClaim — the confirm-gate itself: hard gate, not a passive warning, on any Unverified-tier or commercial-upsell-flagged draft content [D — warning-fatigue rationale sourced]"
    - "ExportClientFacingSurface — dual-surface split: strips internal-only fields from the client-facing document [D]"
    - "UpdateScorecard — logs opportunities raised/closed post-session"
  ubiquitous_language:
    - "EBR / QBR — near-interchangeable in the corpus; EBR is Stefanie Hammond's own real template name, used here as the concrete artifact"
    - "Musts / Shoulds — behaviors the corpus ties directly to failure when absent (Musts) vs. valuable-but-variable (Shoulds)"
    - "Production-line / Hybrid / Brains-work — Maister's leverage-ratio classification, applied to the real 15-tab template; automate production-line rows to buy back time for brains-work, not to relax the Musts"
    - "Dual-surface document — internal notes vs. client-facing export as two distinct artifacts, not one redacted view"
    - "Confirm-gate — the operator's active-clear mechanism on Unverified/commercial-flagged content; a hard block, not a dismissible warning"
    - "Wedge, not destination — this offering's own self-description across all three problem-statement candidates"
---

# QBR/EBR — Tier 1 Concept Prototype Brief

**Not ready per the 30% rule — said here, not buried.** World-claims ratio: 43% [A]/[?].
Test-plan-readiness: 25% (2 of 8 Musts have a Built-in Test actually runnable at this fidelity
tier). Inflated number if the 11 open riskiest-assumption rows get double-counted as separate
world-claims rather than folded into the Gate 2 claims that already reference them: ~63% — naming
this spread explicitly because the 47% rule exists precisely so a self-reported number doesn't
stand in for a grepped one. **Correction 2026-07-28 (Bradley verification gate, two passes):**
this file originally miscounted Gate 2 as 7/9 (78%), misreading two `R`-tagged rows as `[A]`/`[?]`
and dropping one real `[?]` row from the tally — the correct Gate 2 figure is 6/9 (67%), and the
correct world-claims headline is 43%, not the originally-reported 56%. That first correction fixed
the world-claims and Gate-2 numbers here but missed propagating the same fix into the inflated
number below it, which still read 69% (the old, uncorrected arithmetic) until the pipeline's
required proctor-handoff gate caught the mismatch against `math-recount.md` and `index.html`
(both already correctly showing ~63%) — now fixed here too. Full corrected line-by-line recount in
the companion math-recount file.

## Gate 1 — Problem: is it real and sourced, or assumed?

MSPs are expected to run recurring business-value conversations (QBRs/EBRs) with clients. Prep
cost runs 3–7h/quarter per Stefanie Hammond's boot-camp figure and ~4–5h/EBR per Vanessa Chart's
own self-report `[R]` — both vendor-relayed or n=1, directional, not measured `[D]`.

The primary operator persona is verified: Vanessa Chart, Head of Client Delivery, Technica
Solutions — a non-technical delivery lead by background, not a technician `[R — CS: VERIFIED]`.
The buyer persona ("Craig," MSP owner/partner) appears in the corpus but is **not verified**
`[?]`. The client-side exec persona ("not really interested in the back end") is sourced through
Vanessa's own account of her clients — a single-operator lens on the client, not a client
interview `[R]`.

**The largest evidence-quality caveat, carried forward explicitly, not softened:** all operator
evidence above is n=1, vendor-selected reference-customer content `[A / WOBBLY]`.

The one piece of Gate 1 evidence that is a document rather than a spoken claim: Stefanie
Hammond's own 15-tab EBR template, supplied directly, primary source `[D]`. Business-value framing
(explicitly not graphs/percentages) is named directly as the operative message, with a named
failure mode when absent — confidence-lacking operators fall back to technical/tactical framing
`[R]`.

Value-Webs entries for what the client and N-able each "get" from an EBR are largely inferred, not
stated by any single source `[A]`. The "documented risk-acceptance shields the MSP legally" claim
was explicitly downgraded by council review — no case law, no carrier practice found `[?]` — and
must not reach any client-facing surface this prototype produces. The record does contain two real
MSP-liability cases (Mastagni Holstedt v. LanTech; Boardman Molded Products v. Involta), neither of
which turns on meeting cadence — correcting an earlier, now-retracted three-lawsuit/cadence causal
claim `[R]`.

**Gate 1 tally: 4 of 10 claims above are [A]/[?] — 40%.** Already over threshold on its own, and
honestly so: the persona evidence really is n=1/vendor-selected.

## Gate 2 — Right thing: does this advance the mission, what outcome moves?

Grounding this prototype in Candidate 2 (tactical QBR-only) rather than Candidate 1 (unscored
business-OS reframe) or Candidate 3 (~5% survival, as-pitched) is **this brief's own scope
decision, not a resolved organizational one** — the actual altitude call belongs to Beth,
Meaghan, and Nicole `[A]`. Candidate 2's own text names the risk of building at this altitude
directly: it is "exactly the shape a competitor can commoditize fastest," a finding that recurred
across 3 of 5 adversarial voices in the board Idea-Chess pass `[R — CS: VERIFIED]`.

**No OKR objective, key result, or counter-metric exists anywhere in the source corpus for this
offering.** `[?]` This is the largest Gate 2 gap and is not filled here — see frontmatter.

The disruptive-innovation test is still explicitly open. The sustaining read is weakened by the
competitive scan (no shipping MSP-specific AI QBR tool with real PSA writeback found); the
disruptive read (targets non-consumption) is supported only by Andy Cormier's n=1 zero-QBR
MSP counter-example. Both readings are thin `[R]`. The 6-of-9-sources anti-QBR sentiment count is
real, but the source itself flags "kill the QBR" as a recognizable SEO-headline genre — treat as
directional, not as "most MSPs think this" `[A]`.

The positioning fork (delivery-lead/user vs. owner/buyer) remains open, sharpened but not resolved
by the relationship-trust-vs-impact-trust distinction from a vendor-evangelist source `[A]`. **Q2,
named directly in the source as the single biggest gap:** does the operator actually want the
AI-drafts/human-edits mechanism this prototype tests, or just the finished destination? Every
demand signal in the corpus so far is buyer purchase-intent, not operator-mechanism preference
`[?]`. This bears directly on the prototype's core interaction (the confirm-gate) and is untested.
The WTP anchor internally contradicts itself ($300+/user vs. ScalePad's actual $250/mo per-client
entry pricing) — unresolved, do not quote either figure as settled `[A]`.

**Gate 2 tally: 6 of 9 claims above are [A]/[?] — 67%** (corrected — see note above). This is where the offering is genuinely
thinnest; the source's own riskiest-assumptions register shows almost everything still 🔴 open.

## Gate 3 — Built right: tested how, by whom, what counts as done?

Eight Musts are carried forward verbatim from `qbr-ebr.ux.md` §6, each already paired with a
Built-in Test (content-ratio grep, artifact-freshness, ticket-conversion, cadence-drift,
presence-check, dual-surface structural-check, backstage-capacity-check, overclaiming-language-
check) `[D]`. At Tier-1/Concept fidelity — a static single screen, no live PSA/RMM connection —
**only 2 of 8 are actually runnable against this prototype as built**: the dual-surface structural
check and the overclaiming-language check, both checkable against static copy. The remaining 6
require live data connections this prototype does not have `[?]`.

The job-shop/production-line classification of the real 15-tab template is already done in source:
7 sections production-line, 3 hybrid, 3 brains-work `[D]`. This prototype should test one hybrid
section (Risk & Security Review) plus the confirm-gate — not attempt all 15 tabs.

The confirm-gate mechanism itself (Defensibility tiers: Measured/Benchmarked/Estimated/Unverified)
already exists in code over the `baseline_source` field in the Value Ledger — reuse, not new
design. Two rules already decided: bill/headline off Measured only; hard-gate, not passive warning,
on Unverified `[D]`.

**Tested how, by whom is not specified anywhere in source material for this specific prototype.**
No usability-test plan, no named participants, no session count exists yet `[?]`. **"What counts
as done" for the prototype itself is proposed here, not sourced:** a critic-subagent pass can
confirm the screen surfaces (a) a business-value-framed risk-register draft, (b) a visible,
blocking confirm-gate on Unverified content, (c) a real dual-surface distinction — three things
checkable by inspection, not a user test. Flagging this as this brief's own proposal; confirm
before treating as done-criteria `[?]`.

**Gate 3 tally: 3 of 6 claims above are [A]/[?] — 50%.**

## Failure modes

1. **Automation regresses Must 1.** An AI-drafted register can default to technical/metric
   language the moment the operator isn't confident enough to override it — the exact failure
   mode already named in source for under-confident humans; automating the draft doesn't remove
   the risk, it moves who's tempted to skip the framing check `[R]`.
2. **Confirm-gate becomes warning-fatigue in disguise.** Source explicitly warns a passive
   Unverified warning reads as permission, not a stop. If this prototype renders the gate as a
   dismissible banner rather than a hard block, it reproduces the failure it exists to prevent
   `[D]`.
3. **Competitor commoditization.** Candidate 2's own named risk: a standalone QBR/report feature
   is the shape ConnectWise/Kaseya/ScalePad can copy fastest, closing the wedge before ACP's
   platform ambitions get a foothold `[CS: VERIFIED]`.
4. **Wrong interaction entirely.** Q2 unanswered — building AI-drafts/human-edits assumes the
   operator wants that mechanism; every signal in hand is buyer purchase-intent, not operator
   preference. The prototype could be testing the wrong thing `[?]`.

## What's missing (honest list)

- No OKR objective/key result/counter-metric for this offering, anywhere in the corpus.
- No usability-test plan for the prototype itself — no participants, no protocol.
- Q2 unanswered: operator desire for the mechanism vs. the destination, untested.
- Positioning fork (delivery-lead vs. owner) unresolved.
- WTP/pricing self-contradictory across two sources, unresolved.
- 6 of 8 Musts' Built-in Tests unrunnable at this fidelity tier — no live PSA/RMM connection.
- Sustaining-vs-disruptive classification still explicitly open.
- Compliance ownership for the Value Ledger schema (EU AI Act relevance, enforceable 2026-08-02)
  unassigned — do not treat the schema as compliant until a named owner verifies.
- "Done" criteria for the prototype itself is this brief's own proposal, not sourced or confirmed.
