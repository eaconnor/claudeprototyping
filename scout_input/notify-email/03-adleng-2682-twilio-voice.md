# Source 03 — ADLENG-2682: NOT-5: Voice call notifications via Twilio (sibling)

**Pulled from:** n-able.atlassian.net Jira, live this session (2026-06-24)
**Type:** Story · **Status:** To Do · **Reporter:** Neeraj Arora · **Parent:** ADLENG-2649
**URL:** https://n-able.atlassian.net/browse/ADLENG-2682
**[CS: VERIFIED — direct Jira pull]**

Included for context — it is the channel that splits from email. The email story (NOT-4) must remain independent of this.

## Depends On
- NOT-3

## Requirements (verbatim)
- Twilio API client for outbound voice calls — **Critical severity only**
- Only trigger when **`mdr_call_automation` feature flag** is enabled (from SNS payload `tenant_context.feature_flags`)
- Call script: tenant name, detection summary, severity, action required
- Retry failure with exponential backoff; DLQ on repeated failure
- Log call result: **answered / no-answer / failed**

## Acceptance Criteria (verbatim)
- Critical detection with `mdr_call_automation=true` → Twilio call **within 3 minutes** of `detection.escalated`
- Critical with `mdr_call_automation=false` → no call; `twilio=skipped, flag=disabled` logged
- **Twilio failure after 3 retries → DLQ; no impact on email send or detection state**
- Shadow run: Twilio calls placed (or not) match current worker for same detection IDs
- Metrics: `notify.twilio.placed`, `notify.twilio.failures`, `notify.twilio.latency_ms`

## Key cross-channel fact for the email prototype
- The AC explicitly states a Twilio failure has **"no impact on email send"** — the two channels are decoupled by design. The email surface should make this independence visible.
