# Source 04 — ADLBUGS-634: fail-unsafe email suppression bug

**Pulled from:** n-able.atlassian.net Jira, live this session (2026-06-24)
**Type:** Bug · **Status:** Canceled · **Reporter/Assignee:** Damir Omelic
**URL:** https://n-able.atlassian.net/browse/ADLBUGS-634
**[CS: VERIFIED — direct Jira pull]**

This is the strongest piece of *world evidence* for why reliable, observable email delivery matters. It is the pain the notify-service rework addresses.

## Summary (verbatim)
> The `exclude_jira_participants?` method in `application_controller.rb:262-272` rescues `StandardError` and returns `true` (exclude participants). On any DynamoDB error (timeout, throttling, network issue), SOC tickets are created **without request participants, silently suppressing email notifications. No error is raised, no log is written.**

## Impact (verbatim)
> - Affects all **14,149 tenants** with `exclude_jira_participants=false` (the default).
> - Low probability (DynamoDB is highly available), but **high impact when it occurs: customer misses a security notification with no indication anything went wrong.**

## Fix (verbatim)
> Change the rescue default from `true` to `false`. Including participants when you shouldn't have is a minor annoyance (extra emails). **Excluding participants when you shouldn't have means a customer misses a security notification silently.**

## Discovery (verbatim)
> Found during **NCIP-17468** investigation (SOC email notification not delivered for Differentiated Therapeutics Inc).

## Ingredients for the prototype
- **14,149 tenants** affected (the default config) — real scale number [CS: VERIFIED]
- The core failure mode: **silent suppression — no error, no log**. The prototype's value is making delivery *observable* (accepted/rejected/bounced per recipient).
- Design principle this validates: **fail-safe, not fail-silent**. A delivery surface that shows nothing when nothing was sent reproduces the bug; a surface that shows "0 sent / suppressed / why" prevents it.
- Status is Canceled — note: the code-level fix path changed; the *requirement* (observable, fail-safe delivery) is what carries into notify-service.
