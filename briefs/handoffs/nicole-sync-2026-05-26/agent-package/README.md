# Spec Pre-flight — Agent Package for Nicole

Built by Beth Connor · Design Manager · N-able
Version: May 2026 · **MVP — tuned for Nicole**

---

## What this is

A multi-agent Claude Code setup for scoring product ideas before an Intent Spec is written. Spec Pre-flight: the check that runs before the spec leaves the runway.

Companion to your Intent Context model. Sits between the evidence repository and Intent Spec generation:

```
Intent Context (tagged evidence)
    ↓
Spec Pre-flight gap check — is the evidence sufficient?
    ↓
Intent Spec generation
    ↓
Readiness Gate
    ↓
Engineering
```

The mechanism: Owen matrix math running as an expert panel. Each expert voice names what it sees, what it assumes, and what would prove it wrong. The Advisor coordinates and delivers the gap report.

---

## Setup

1. Copy this folder's contents into your project's `.claude/agents/` directory
2. Copy `CLAUDE.md` into your project root
3. Open Claude Code in your project directory
4. Type: `advisor — onboard me`

---

## The six agents

| Agent | Role |
|---|---|
| `advisor` | Coordinator. Onboards. Asks clarifying questions. Narrates gap reports. |
| `explore` | Hold the problem incomplete. Ask one question before diving in. |
| `refine` | Sharpen a draft you've already written. |
| `scout` | Pull evidence from Jira / Confluence / web. No synthesis. |
| `scorer` | Run the 11-dimension expert panel. Surface gaps. |
| `spec` | Turn a scored concept into a structured `.brief.md`. |

---

## Likely first moves for you

**Stress-test it on a strategy doc:**
```
scorer — read [doc path or URL]
```
This is what Beth's been doing. Throw your AI-First Operating Model or any strategy doc at it. See what the panel catches.

**Portfolio read on current initiatives:**
```
advisor — portfolio scoring on [list initiatives or paste summaries]
```
Comparative scoring across multiple initiatives. Which bets are evidence-based, which are running on assumption, which may be duplicating each other's Desired Outcome.

**Score a single concept:**
```
advisor — onboard me
```
The Advisor walks you through the path: explore → scout → score → spec.

---

## Confidence tags — on every factual claim

| Tag | Meaning |
|---|---|
| `[CS: VERIFIED]` | Confirmed against primary source |
| `[CS: HIGH]` | Well-sourced; not personally verified |
| `[CS: MEDIUM]` | Plausible; partial sourcing |
| `[CS: LOW]` | Thin sourcing; use with caution |
| `[CS: FABRICATION RISK]` | Model likely hallucinated; verify |
| `[CS: UNKNOWN]` | Your domain; you must verify |

The model is fluent. Fluency is not accuracy. Tags are the check.

---

## Engineering signal integration (sketch)

Engineering signals can feed the panel. The cluster mapping:

| Signal | Source | Dimension it feeds |
|---|---|---|
| Story point velocity / sprint data | Jira | Business Economics |
| Tech debt flags | Jira / internal | Concept Quality |
| API utilization | Pendo | Market Signals |
| Incident / bug volume | Jira | Market Signals |
| Architecture decision records | Confluence / repo | Process Integrity |
| Test coverage | CI/CD | Concept Quality |

**Status: untested.** Beth hasn't run engineering signals through the panel yet. Worth a pilot.

---

## Roadmap (after MVP)

- **Phase 2:** Tune for Raj and Daniel — the original Adlumin PMs this was built for. Adlumin-specific onboarding paths and example briefs.
- **Phase 3:** Expand to all PMs, designers, execs (Laura, Meaghan, the wider org). Role-based onboarding paths. Portfolio-leadership read.

---

## Feedback

Bring it to Beth Connor. This is a working prototype, not a finished product. What breaks is information.
