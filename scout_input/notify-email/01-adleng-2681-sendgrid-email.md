# Source 01 — ADLENG-2681: NOT-4: Email notifications via SendGrid

**Pulled from:** n-able.atlassian.net Jira, live this session (2026-06-24)
**Type:** Story · **Status:** To Do · **Reporter:** Neeraj Arora · **Parent:** ADLENG-2649
**URL:** https://n-able.atlassian.net/browse/ADLENG-2681
**[CS: VERIFIED — direct Jira pull]**

## Depends On
- NOT-3
- ENR-6 (detection.escalated payload with `enrichment_summary`)

## Requirements (verbatim)
- SendGrid API client; **per-profile HTML email templates (malware, identity, ransomware, generic)**
- Templates include: detection summary, severity, Jira ticket link, recommended actions
- Retry on transient failures (exponential backoff); DLQ on repeated failure
- Log email delivery status per recipient (**accepted / rejected / bounced**)
- PII review of template fields before templates finalised

## Acceptance Criteria (verbatim)
- `malgeneric` escalation → malware template email sent to **all resolved recipients within 2 minutes**; contains correct Jira ticket URL from SNS payload
- SendGrid failure retries **3×**; persistent failure → DLQ; alarm fires
- Shadow run: email output (template, recipients, content) matches current worker for same detection IDs
- Metrics: `notify.sendgrid.sent`, `notify.sendgrid.failures`, `notify.sendgrid.latency_ms`

## Ingredients for the prototype
- Four named templates: **malware · identity · ransomware · generic**
- Delivery states: **accepted · rejected · bounced** (per recipient)
- Latency target: **email within 2 minutes** of `detection.escalated`
- Retry policy: **3× exponential backoff → DLQ → alarm**
- Email body fields: detection summary · severity · Jira ticket link · recommended actions
- "Shadow run" parity concept: new service output compared against current worker
