# Critic Pass 2 — notify-service Email Delivery (SendGrid)
**Tier 1 · Concept (gate 30) · post-build · lo-fi · internal · browser-verified**

## Score (1–5 per dim)

| # | Dimension | Score | Note |
|---|-----------|-------|------|
| 1 | Coherence | 5 | The spine held into the build. Loud suppressed banner + pulsing critical chip + "would have been SILENT on old worker" flag = the surface IS the fix. |
| 2 | Source-fidelity | 5 | SMTP codes real (250/421 4.7.0/550 5.1.1), rescue path quoted verbatim, NOT-5 "no impact on email send" cited inline. Domain labels exact. |
| 3 | Demo-ability | 5 | Browser-verified: renders clean, no console errors, all five row states present, council modal opens. Up from 4. |
| 4 | Differentiation | 5 | Not a log viewer. Visible absence (suppressed/zero-recipient) + spatial channel independence. The differentiating feature is built, not promised. Up from 4. |
| 5 | Risk | 5 | All four pre-build failure modes defended on-surface. |
| 6 | Scope discipline | 4 | Council modal ships with placeholder tension bodies + blank synthesis stub (Step 6); counter-metric guardrail deferred. Held at 4. |
| | **TOTAL** | **29 / 30** | Build closed the gaps without drifting. |

## Delta vs. pre-build (27/30)

| Dimension | Pre | Post | Δ | Driver |
|-----------|-----|------|---|--------|
| Coherence | 5 | 5 | 0 | Spine survived intact. |
| Source-fidelity | 5 | 5 | 0 | Verbatim rescue path + real SMTP codes carried through. |
| Demo-ability | 4 | 5 | +1 | Was "states not enumerated"; now all five render, browser-verified. |
| Differentiation | 4 | 5 | +1 | Visible-absence + channel-independence feature now built. |
| Risk | 5 | 5 | 0 | All four failure modes defended on-surface. |
| Scope discipline | 4 | 4 | 0 | Council modal stubbed; counter-metric deferred. |
| **TOTAL** | **27** | **29** | **+2** | Two gaps that capped Demo-ability and Differentiation closed. |

## Pre-build gap closure (the 5)
1. Row states enumerated, suppressed loudest — **CLOSED.** Red wash + pulsing box-shadow + loud banner.
2. Stub recipient-resolution — **CLOSED.** ResolveRecipients chain: SOC-4471 → profile → Call Directory priority → 3 recipients.
3. Channel independence visible — **CLOSED.** Twilio Channel B fails while SOC-4471 email rows stay accepted; NOT-5 cited.
4. Provisional DoD in banner — **CLOSED.** Tagged [A] "not yet ratified."
5. 0-sent rows carry a reason — **CLOSED.** Suppressed (rescue-to-true) and zero-recipient (empty Call Directory) distinct.

## Domain-model fidelity
PASS: Every table column traces — Recipient, EmailTemplate (all four), DeliveryStatus, Reason, Latency.
PASS: Services on-surface — SendEmail, GateBySeverity, ResolveRecipients, RetryOrDLQ, RenderTemplate, DeadLetterRecord.
PASS: No surface without an entity; no entity without a surface.

## Punch list
PASS: Suppressed is unmistakably the loudest thing on screen.
PASS: All five row states present with sourced SMTP codes.
PASS: Channel independence reads spatially + asserted with SOC-4471 cross-example.
PASS: Seed data fully fictional — Birchwood/Cascade/Meadowlark/Foxglove/Thornfield, all .example. No real Gate-1 names leaked; 14,149 did not migrate.
PASS: Apex Bridge clean — token block, Inter + JetBrains Mono, rounded, soft shadows, no Itten palette.
PASS: Three distinct surfaces — topbar, canvas, violet rail.
PASS: 3-way mode toggle persisting to apx-mode-pref, applied pre-paint.
PASS: Fidelity banner with Tier-1 pips + provisional DoD.
PASS: Four routed cards each with Does/Why-now/If-shipped-without + ROI; Unknown named honestly.
PASS: Attribution "0% PM" present.
PASS: Counter-metric handled with integrity — rail names it has no on-screen guardrail rather than faking one.

FAIL: Council modal ships with placeholder tension bodies + blank synthesis. → Resolved in Step 6 (council fills the modal).
FAIL: Hard Mode button fires a raw alert(). → Finish item; acceptable Step-6 stub but reads as broken.
MISSING: Counter-metric guardrail — no on-surface volume cap/dedup. Named-not-built at Tier 1; must not vanish at Tier 2.
MISSING: No "breached 2m target" latency state — the KR's catch case is undrawn.
RISK: Suppressed-row dominance verified at 7 rows; may stop being loud at 200+ row density. Untested.
RISK (FIXED): "Seed data fictional" check showed `~`; seed is fully fictional → corrected to `✓`.
RISK (FIXED): "27/30" hard-coded from pre-build in rail + council modal. Post-build is 29/30 → corrected to 29/30 in both places.

## Verdict
**29/30, +2 over pre-build.** Build closed all five gaps without drifting from ADLBUGS-634. Artifact finish-fixes applied: stale score → 29/30, seed-check → ✓. Council placeholders fill in Step 6.

## Note for handoff
Metric strip (6 gated / 1 suppressed) counts escalations; table has 7 recipient rows across 5–6 detection IDs. Strip-to-row counts not fully reconciled — [CS: MEDIUM], flag for Bradley grep-gate at handoff.
