---
confidence_regime: PROCEED-FLAGGED
proceed_because: qbr-hifi.html is built enough (8 finalized tabs, live confidence-tier logic, dispute/finalize state) to blueprint honestly; the backstage is mostly unbuilt on purpose and naming that gap accurately is the point of this artifact, not a reason to wait.
machine_behavior: build the frontstage/backstage split from what renders in qbr-hifi.html · mark every backstage mechanism [D]/[A]/[R]/[?] by what's actually built vs. spec'd vs. invented · do not fabricate a reconciliation engine or document parser that doesn't exist · surface [CS:] tags visibly · leave the synthesis slot blank for Beth
---

# Service Blueprint — QBR Analyst / EBR Flow
**Grounded in:** [qbr-hifi.html](qbr-hifi.html) (working prototype, verified in-browser 2026-08-07) + [punch-list-hifi.md](punch-list-hifi.md)
**Voice:** Service Blueprint (Shostack/Bitner), per [`.claude/agents/council.md`](../../.claude/agents/council.md) §2
**Date:** 2026-08-12

## Tag legend
`[D]` demonstrated — renders and behaves this way in qbr-hifi.html today
`[R]` research/spec-grounded — cited to a real spec (`acp-core-main-3/specs/`), not invented for this blueprint
`[A]` assumed — mechanism is *named* in the prototype's own copy, not built
`[?]` open — named as unsolved, by the prototype's own copy or by this blueprint

**The rule this blueprint follows:** an early-stage backstage gap is not evidence the idea is unsound — it's evidence the idea hasn't been built yet. This blueprint only scores a gap as a risk when it's structural (a chokepoint, a broken handoff, a cost that survives even once built). Everything else is named and left alone.

---

## Orientation — two actors, one client, one cycle

- **Priya Shah** — Delivery Lead, Laissez Faire Fellows. Frontstage. Owns the client relationship, works the draft, presents in the room.
- **Jordan Ellis** — Technician, N-able. Backstage. Builds the findings register Priya works from. His evidence trail is **read-only to Priya** `[D]` — she can dispute a finding, she cannot edit his sourcing.
- **Derek Iannotti** — Owner, Ridgemont Financial Services (the client). Only enters the blueprint at Stage 6, the room itself.
- **Ridgemont Financial Services** — the one client this build is scoped to, out of Laissez Faire Fellows' 142-client book `[D]`.

The blueprint below runs one full cycle: onboarding → standing monitoring → register build → draft work → finalize → the room → follow-up → next cycle's onboarding reads the follow-up back in. That last arrow is the loop the whole prototype is built to close `[D — Follow Up Summary explicitly states "the same mechanism QBR Analyst read Ridgemont's history from during onboarding"]`.

---

## Stage 1 — Onboarding (Priya, once per Coworker activation)

**Physical evidence:** 6-step wizard (Choose Coworker → Configure → Import history → Value Ledger baseline → First computation → Schedule); coworker-choice cards; 142-client tier table; template-vs-import branch cards; upload dropzone; auths & permissions table; "magic panel" compute button. `[D]`

**Customer actions:** none. Ridgemont is not present for this stage — onboarding is Laissez Faire Fellows-internal. `[D — this is correct scoping, not a gap]`

— *Line of interaction* —

**Frontstage (Priya):** picks QBR Analyst from three Coworker cards `[D]`; reviews the 142-client list and A/B/C/D tiers already pulled via ConnectWise (Ticket Triage's prior onboarding means PSA/RMM/MDR connections already exist — this step inherits them) `[D]`; sets each client's industry, which drives which compliance framework shows up in their draft `[D]`; chooses template-start vs import-own-structure `[D]`; uploads or pastes last cycle's EBR material `[D]`; sets a Value Ledger hours-per-cycle baseline that overrides the platform default for ROI math `[D, R — FR-008]`; reviews the per-source auths table; clicks "Compute my portfolio." `[D]`

— *Line of visibility* —

**Backstage:** ConnectWise client/tier pull `[A — illustrative field names, no live pull]`; MCP gateway issues per-source scoped tokens, filtered by `tenant_id` at the source and `client_id` at the gateway before any Expert sees a row `[R — specs/004-ai-coworker-registry; CS: VERIFIED per acp-core-main-3/CLAUDE.md]`; EBR-history document parse into takeaways/promises/risks `[A — "no real document parser behind this yet," the prototype's own words]`; comparable-client cohort named for future benchmarking (Meridian Trust — A-tier stretch, Fernbrook Wealth — B-tier peer) `[A]`.

**Support processes:** ConnectWise Manage, N-central, Cove, Adlumin, Microsoft Entra ID, KnowBe4, Inforcer — 7 vendor sources, each individually scoped read-only to Ridgemont `[R for the scoping mechanism, A for the specific field pulls shown]`. Value Ledger config store `[R — FR-008]`.

---

## Stage 2 — Always Current (ongoing, Priya monitors; replaces the old "Prep-Assemble" step)

**Physical evidence:** portfolio table, tier-count pills, cadence status (on-track/overdue), risk flags. `[D]`

**Customer actions:** none.

— *Line of interaction* — (nothing crosses it at this stage)

**Frontstage (Priya):** stands here as her default view of the whole book — no prep-night scramble. `[D]`

— *Line of visibility* —

**Backstage:** cross-source join formulas shown as an illustrative worked example (`3 clients with ≥1 finding at riskLevel:'high' AND status:'pending'`) `[A — formula shown, no engine runs it]`; risk-triggered nudge can pull a client forward off its tier's default cadence `[A — designed target, untested, per the prototype's own tag]`.

**Support processes:** same 7 sources, plus whatever cross-source join layer would compute the rollups. `[A]`

---

## Stage 3 — Register build (Jordan — pure backstage; never crosses the line to Priya except as finished output)

**Physical evidence:** findings register, four-tier confidence badges (✓ Measured / ≈ Benchmarked / ~ Estimated / ! Unverified), per-finding evidence trail cards, the Baseline Read table. `[D]`

**Customer actions:** none.

**Frontstage:** none by design — the UI's own copy calls this "his register, read-only to Priya." `[D]`

— *Line of visibility* —

**Backstage (Jordan / Baseline Expert):** pulls raw per-source metrics; reconciles across 2–3 independent sources into a confidence tier — e.g. two sources agreeing on a device count is *Measured*, one source directionally corroborated by a second is *Benchmarked*, a cross-source count mismatch with no source able to say why is *Estimated*, a single unconfirmable source is *Unverified* `[D — this reasoning is fully authored per-finding in the register, but it is authored text, not a running reconciliation engine — flag as A for "live"]`; runs Baseline Read — compares Ridgemont's raw MFA/training/patch percentages against Fernbrook (peer) and Meridian (stretch) `[D as UI, A as the naming note itself admits: "the comparable-client cohort was named in onboarding step 5 but not computed against until now... naming the function, not the full Expert decomposition"]`.

**The named hole:** the Runbook (intent + policy + risk classification governing what an action is allowed to do) and the Expert (a versioned, scoped model+tool assembly) that are supposed to sit behind every one of Jordan's backstage actions are real, spec'd capabilities (`specs/002-runbook-config-store` IC-2026-001; `specs/003-ai-expert-config-registry` FSN-82688) `[R]` — and **neither has any UI surface anywhere in this build** `[A — confirmed gap, punch-list item 4]`. Everything Jordan appears to do, this blueprint has to take on faith.

**Support processes:** same 7 sources; a cross-tenant read of Fernbrook's data for benchmarking, whose consent/authorization model does not exist — the prototype's own copy names this directly: "comparing across tenants is not the same permission as reading one tenant... the cross-tenant access question is real and unsolved." `[? — named unsolved by the build itself, not by this blueprint]`

---

## Stage 4 — Draft work (Priya, frontstage — the 8-tab structure)

**Physical evidence:** 8-tab strip (Agenda · Current Climate · Risk Review · Employee Review · Hardware · Technical Roadmap · Referrals & Testimonials · Follow Up Summary); decision-prompt cards for ask-client and gap findings; Accept/Edit/Dispute buttons; per-tab finalize bar. `[D]`

**Customer actions:** none yet.

— *Line of interaction* — (nothing crosses it yet)

**Frontstage (Priya):** works each finding — Accept, Edit the room-facing "meaning," or Dispute → Jordan `[D]`; resolves ask-client findings via three paths (Client confirmed → tier upgrades to Benchmarked; Genuine gap → stays Unverified, named for the room; Re-check other sources first → repull) `[D]`; resolves gap findings (Known/remediation-in-progress → Measured; Unknown/needs-client-input → stays Estimated) `[D]`; every resolution recalculates the security score live (100 minus weighted sum of open findings, shown with a "why {score}?" breakdown). `[D]`

— *Line of visibility* —

**Backstage:** a Dispute sets the finding's status to `escalated`, and the UI shows "Escalated to Jordan Ellis — this classification is now his to resolve before the draft locks." `[D — the status exists]` **There is no Jordan-side screen anywhere in this build that receives, queues, or resolves an escalation.** `[A — confirmed gap]` The thread is one-directional: Priya can push a finding back, and nothing shows it coming forward again.

**Support processes:** security-score deduction math, computed live off the in-memory findings array. `[D]`

---

## Stage 5 — Finalize (per-tab, not global)

**Physical evidence:** "✓ Finalized — locked for the meeting" state per tab; draft-status pill reading `In review — N/8 sections finalized` until all eight are done, then `Ready for the meeting`. `[D — this is the resolved PRIME punch-list item]`

**Customer actions:** none.
**Frontstage:** whoever owns a given tab finalizes it independently — Risk Review (Jordan's register, via Priya) can lock before or after Employee Review, different owners, different pace, by design. `[D]`
**Backstage / Support:** none new — this is pure state derivation (`DR_TABS.every(finalized)`), no external system involved. `[D]`

---

## Stage 6 — The room (client-facing meeting — the only stage with a real customer)

**Physical evidence:** the finalized deck, presented live over Microsoft Teams; the Agenda tab's meeting-details header (client, meeting contact, date, location, last EBR, cadence, client advocate). `[D — structure is built; Ridgemont content is fictional]`

**Customer actions (Derek Iannotti):** attends; is walked through Current Climate → Risk Review → Employee → Hardware → Roadmap → Referrals; is asked the consultative questions Priya carried in; hears the renewal ask (September 2026 renewal, two unenrolled endpoints, backup-coverage question). `[D as structure]`

— *Line of interaction* — **the only stage where this line is real.** Everything upstream of this point is internal.

**Frontstage (Priya):** presents. Only the finalized draft is meant to be what's on screen — but **the access-control split between "internal working draft" and "client-facing export" does not exist.** The prototype's own copy names this directly: "Everyone with technician/admin access sees the same draft Jordan and Priya see; the dual-surface rule is a content-model requirement today, not yet an access-control one." `[A — open gap, named by the build itself]` Nothing currently stops an unfinalized tab from being the thing shown live.

**Backstage / Support:** none at this stage.

---

## Stage 7 — Follow-up (Priya, post-meeting)

**Physical evidence:** Follow Up Summary tab — "This cycle's commitments" list; a textarea for the post-meeting summary email, per the real template's own instruction. `[D]`

**Customer actions:** implicitly makes commitments during the room (captured after the fact, not live).

**Frontstage:** this cycle's promises are drafted here — in the current build, auto-populated straight from the Technical Roadmap items, not from what was actually said or agreed in the room. The prototype tags this itself: "auto-drafted from this cycle's roadmap items; illustrative, not wired to a real commit step." `[A]` Pasting the sent summary email is the one manual, honest step here. `[D]`

**Backstage / Support:** none defined. **This is the least-instrumented tab in the build** — the thing meant to *become* next cycle's history has no capture mechanism of its own; it borrows the roadmap's.

---

## Stage 8 — Loop closes (next cycle's onboarding, Stage 1 repeated)

**Physical evidence:** "Pulled from Q2 2026 EBR" card in onboarding step 3 — key takeaways, promises with **live-computed status** (Honored / Not yet honored — still open this cycle / Carried forward — named again, not closed), risks still open. `[D]`

**Customer actions:** none directly, but Derek's own words from last cycle ("needs to happen properly, not in a EBR slide") re-enter the system here as a takeaway.

**Frontstage:** whoever onboards this client next uploads or pastes last cycle's material and sees promise status computed against the *current* findings register. The prototype flags this precisely: "promise status is computed live against this session's findings register, not re-derived from the uploaded document." `[D as behavior, A as fidelity]` It is a real live-status check against real current data — but it is not, yet, reading the actual document.

**Backstage:** the document parser that would extract takeaways/promises/risks from an arbitrary uploaded deck does not exist. This entire stage runs on a single hand-authored `EBR_HISTORY` object. `[A — confirmed, by the prototype's own comment]`

**Support processes:** none. This is the single biggest named hole in the loop the product is built around — the "always current" promise depends, at its one closing joint, on parsing unstructured documents no vendor API supplies.

---

## Register — risks and assets, tabulated from the above

| Type | Gate | Named item | Evidence status | Crux test (risk) / Compounds-or-decays (asset) |
|---|---|---|---|---|
| Risk | 3 | EBR-history document parser doesn't exist (Stage 8) | `[A]` | **Crux.** If it can't reliably extract promises/risks from an arbitrary uploaded deck, "closes the loop" collapses back into the manual re-entry the product exists to remove. If it works, the loop is real. |
| Risk | 3 | Dispute → Jordan has no receiving screen (Stage 4) | `[D — confirmed, not assumed]` | **Crux.** The Bradley rail's own stated thesis is "ownership, not rubber-stamp." A dispute that goes nowhere visible makes that thesis untestable, not just incomplete. |
| Risk | 3 | Runbook / Expert governance layer has zero UI surface (Stage 3) | `[A]` | **Crux for trust, not for this build's UX.** Users don't need to see it to use the tool. But if it never gets built, every claim this blueprint takes "on faith" about what Jordan's backstage is allowed to do stays unenforceable. |
| Risk | 2/3 | Cross-tenant benchmarking has no consent/authorization model (Stage 3) | `[?]` | **Crux.** Named unsolved by the prototype itself. If it resolves badly, Baseline Read — the mechanism this handoff specifically asked to ground the blueprint in — has to be cut or restricted to same-tenant data. If it resolves well, it's a real differentiator (see asset row below). |
| Risk | 3 | Internal-draft vs. client-facing export has no access control (Stage 6) | `[A — named by the build itself]` | Note, not quite a crux: nothing *currently* fails because of it (the prototype is single-user), but it is the one gap that would fail loudly the first time two people with different clearance touch the same client. |
| Asset | 3 | MCP gateway tenant/client double-filter scoping | `[R — VERIFIED]` | **Compounds.** Real infrastructure, cited to a real spec, not invented for this prototype. Every future Coworker or Expert inherits it for free. |
| Asset | 3 | Confidence-tier vocabulary (Measured/Benchmarked/Estimated/Unverified) with per-finding reconciliation reasoning already authored | `[D as content]` | **Compounds, conditionally.** The schema is done — a future reconciliation engine has a trained-in vocabulary to target rather than one to invent. Decays if nobody builds the engine; the vocabulary alone doesn't self-execute. |
| Asset | 2 | Comparable-client cohort already named before Baseline Read needed it (Fernbrook, Meridian) | `[A]` | **Decays.** A single illustrative example, not a live cohort-selection algorithm. A head start, not a moat — a fast-follower reproduces this in an afternoon. |

---

## The four open questions, answered where the build permits

**1. Templating — how does a customer's own EBR structure get in, and does the system feed back into it?**
Named, not built. Onboarding step 2(c) offers the import branch `[A]`. No feedback mechanism exists for a customer changing their structure mid-relationship and that change propagating — this isn't even a named future stage yet, just an unaddressed edge of the current one.

**2. What defines "good" — a baseline standard, or invented per-client?**
The build already answers this, partially, without anyone deciding it on purpose: Baseline Read compares Ridgemont against a *peer cohort* (Fernbrook, same tier + industry), not an absolute standard. "Good" is cohort-relative, not invented per-client and not a fixed universal bar — but the cohort itself is chosen once, at onboarding, by tier + industry, and never revisited or audited per finding. `[D — this is the shape as built, not a proposal]`

**3. Co-authoring — is Accept/Edit/Dispute real threading, or one-directional?**
One-directional, confirmed at Stage 4 above. Real threading would need, at minimum: a Jordan-side queue of disputed findings, a resolution action he can take, and a way for Priya to see *what* he resolved and *why* — not just an "Escalated" pill flipping to something else. That's three missing screens, not a small patch.

**4. The logistical magic (API normalization, cross-tenant benchmarking, source reconciliation, history extraction) — none had a backstage process. Do they now?**
Named more precisely, not solved. Source reconciliation has a real vocabulary and authored per-finding reasoning `[D as content]` but no running engine. Cross-tenant benchmarking has a named-but-unauthorized cohort `[?]`. History extraction has zero parser `[A]`. API normalization across the 7 vendor sources has never been named at all in this build — it's the one item on this list this blueprint can't even point to a stub for.

---

## Synthesis
[0% Claude — fill this in]
