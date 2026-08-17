# Source 02 — ADLENG-2649: notify-service (parent epic)

**Pulled from:** n-able.atlassian.net Jira, live this session (2026-06-24)
**Type:** Epic · **Status:** To Do · **Reporter:** Neeraj Arora
**URL:** https://n-able.atlassian.net/browse/ADLENG-2649
**[CS: VERIFIED — direct Jira pull]**

## Summary (verbatim)
> Build `notify-service` — subscribes to `detection.escalated` and `detection.closed`, applies severity gating and throttle logic, sends email (SendGrid) and voice calls (Twilio for Critical). Replaces notification logic embedded in `AutoEscalateDetectionWorker` only — syscore does not have customer-facing notifications.

## Business Objective (verbatim)
> Twilio calls currently block the worker thread. notify-service makes all notifications async — failures retry via DLQ with **zero impact on detection state, Jira creation, or enrichment.**

## SNS Topic
- Default `DetectionEvents`; topic ARN configurable via ConfigMap.

## Definition of Success (verbatim)
> All **High and Critical** escalations trigger email **within 2 minutes** of `detection.escalated`. Twilio fires for Critical when enabled. Notification failures never delay any other pipeline step.

## Ingredients for the prototype
- Two trigger events: `detection.escalated`, `detection.closed`
- Two gates before send: **severity gating** + **throttle logic**
- Two channels: **email (SendGrid, High+Critical)** + **voice (Twilio, Critical only)**
- Core design value: **async / decoupled** — notification failure never blocks detection, Jira, or enrichment
- Replaces logic currently inside `AutoEscalateDetectionWorker`
