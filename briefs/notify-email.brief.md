---
feature: "notify-service Email Delivery (SendGrid)"
gate: 30
owner: "Beth (PM, internal stress-test)"
problem_statement: "Email security notifications can be silently suppressed — a DynamoDB rescue defaults to excluding Jira participants, so SOC tickets ship without recipients, no error, no log. [R: ADLBUGS-634 / NCIP-17468]"
okr_objective: "Make per-profile SendGrid email delivery observable so silent suppression becomes impossible to ship unnoticed."
okr_key_result: "100% of High+Critical escalations show a per-recipient delivery row (accepted/rejected/bounced) within the 2-minute target; '0 sent' renders a reason, never a blank. [A — target, not yet measured]"
counter_metric: "Recipient over-notification must not increase ('tons of emails still received directly', Case 02681702). [R: PUT-996]"
idea_score: 13
evidence_sources:
  - "ADLENG-2681 (NOT-4 SendGrid story, verbatim AC) [R]"
  - "ADLENG-2649 (notify-service epic, async design value) [R]"
  - "ADLENG-2682 (NOT-5 Twilio sibling, channel decoupling) [R]"
  - "ADLBUGS-634 (silent-suppression bug, 14,149 tenants) [D]"
  - "ADL-1947/1446/1087/1062 (customer routing requests) [R]"
  - "PUT-996 (Call Directory, recipient resolution, over-notification) [R]"
domain_model:
  entities:
    - "Notification — the unit dispatched per detection event [R: ADLENG-2649]"
    - "EmailTemplate — one of four named: malware/identity/ransomware/generic [R: ADLENG-2681]"
    - "Recipient — resolved from profile-based detection recipients / Call Directory [R: ADLENG-2681, PUT-996]"
    - "Detection — the detection.escalated/closed event carrying severity + Jira link [R: ADLENG-2649]"
    - "DeliveryStatus — per-recipient: accepted/rejected/bounced [R: ADLENG-2681]"
    - "DeadLetterRecord — entry after 3 failed retries [R: ADLENG-2681]"
  value_objects:
    - "Severity — gate is High+Critical for email [R: ADLENG-2649]"
    - "Latency — 2-minute target from detection.escalated [R: ADLENG-2681/2649]"
  services:
    - "ResolveRecipients — maps detection to recipients via profile/directory [R: ADLENG-2681, PUT-996]"
    - "RenderTemplate — selects + fills one of four templates [R: ADLENG-2681]"
    - "SendEmail — SendGrid API client dispatch [R: ADLENG-2681]"
    - "RetryOrDLQ — 3x exponential backoff then DLQ + alarm [R: ADLENG-2681]"
    - "GateBySeverity — drops below High before send [R: ADLENG-2649]"
status: "draft"
---

# notify-service Email Delivery (SendGrid) — Brief

**Tier 1 · Concept (gate 30).** Lo-fi internal stress-test surface. High [A]+[?] is acceptable at this tier — and this brief is unusual: **Gate 1 is over-sourced** (rare), while the [A]/[?] cluster in Gate 3, the prototype's own test plan. That asymmetry is the honest story. See math-recount for ratios.

## Gate 1 — Problem (real and sourced)

The problem is **real and verified**, not assumed.

- The current failure mode is **fail-silent**: `exclude_jira_participants?` rescues `StandardError` and returns `true`, suppressing email with no error and no log. [R: ADLBUGS-634 verbatim]
- This affects **14,149 tenants** running the default config. [D: ADLBUGS-634 verbatim, real scale number]
- It was discovered live, in the field — a customer (Differentiated Therapeutics Inc) missed a SOC notification under NCIP-17468. [R: ADLBUGS-634]
- Customer demand for better routing/recipient handling is documented across four requests: Magna5 (ADL-1947), Jared Dewitt (ADL-1446), Fairbanks (ADL-1087), Integris (ADL-1062). [R]
- The over-notification counter-symptom is also field-sourced: "tons of emails still received directly," Case 02681702. [R: PUT-996]

Real customer names (Magna5, Integris, Fairbanks, Jared Dewitt, Samson Electric, Differentiated Therapeutics) are **Gate 1 evidence — never seed data.** Prototype seed must be fictional.

**The product insight:** a delivery surface that shows nothing when nothing was sent *reproduces* the bug. A surface that shows "0 sent / suppressed / why" *prevents* it. The prototype's entire value is making the silent case loud. [R-derived from ADLBUGS-634 fix rationale]

## Gate 2 — Right thing (advances the mission)

Yes, with one named tension.

- notify-service decouples notifications from the detection pipeline so failures retry via DLQ with **zero impact on detection state, Jira creation, or enrichment.** [R: ADLENG-2649]
- The Twilio sibling (NOT-5) explicitly has "no impact on email send" — channels are independent by design; the email surface should make that independence **visible**. [R: ADLENG-2682]
- Outcome that moves: a High/Critical escalation a SOC depends on becomes **observably delivered or observably failed** — no third silent state. [A — this is the design bet, not yet validated]
- **Tension:** the four routing requests want *more targeting* (right recipient); PUT-996 wants *less noise* (fewer wrong emails). The email surface sits between them and must show both send-success and send-suppression without inflating volume. The counter-metric guards this. [R-sourced tension]

## Gate 3 — Built right (tested how, by whom, what's done)

**This is where the brief is thin — appropriate at Tier 1, but named.**

- Tested how: internal team review of the lo-fi surface. No real SendGrid integration in the prototype. [A]
- By whom: Beth + internal stress-test audience. [A]
- "Shadow run" parity (new output matches current worker for same detection IDs) is the *production* test concept — out of scope for the lo-fi surface but the thing the surface should later make legible. [R: ADLENG-2681, but prototype's role in it is A]
- What counts as done for the prototype: the four templates, severity gate, per-recipient accepted/rejected/bounced rows, retry/DLQ state, and a visible "0 sent / why" path are all rendered and inspectable. [A — definition of done not yet ratified by team]
- Metrics named in source (`notify.sendgrid.sent/failures/latency_ms`) are production telemetry; whether the prototype mocks them is undecided. [?]

## Failure modes

1. **Reproducing the bug in the demo.** If the surface renders blank or absent on a suppressed send, it teaches the same fail-silent lesson it exists to kill. The "0 sent / why" row is load-bearing. [R-derived]
2. **Confusing channel coupling.** If a mocked Twilio failure visually drags down the email row, the prototype contradicts NOT-5's "no impact on email send." Independence must read clearly. [R: ADLENG-2682]
3. **Fictional-vs-real leak.** Real customer names from Gate 1 evidence ending up in seed data. Hard line: seed is fictional. [R: CLAUDE.md seed rules]
4. **Inflating the counter-metric story.** Showing delivery success without the noise guardrail re-creates "tons of emails." [R: PUT-996]

## What's missing (honest unknowns)

- Definition of done for the prototype not ratified by team. [?]
- Whether prototype mocks production metrics or omits them. [?]
- Latency target (2 min) is a real spec value but unmeasured against this surface. [?]
- Recipient resolution detail — how profile-based recipients + Call Directory priority order combine — is referenced but not specified for the surface. [?]
- No usability evidence that "0 sent / why" actually changes SOC behavior. [?]
- idea_score 13/20 is a working estimate pending the formal rubric run. [A]
