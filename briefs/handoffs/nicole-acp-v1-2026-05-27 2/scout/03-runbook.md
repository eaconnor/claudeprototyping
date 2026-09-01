# Runbooks Definition
**Source:** https://n-able.atlassian.net/wiki/spaces/AI/pages/61898489923/
**Author:** Nicole Reineke
**Last modified:** May 05, 2026
**Space:** AI

---

A **Runbook** is a **governed execution contract** that an AI Coworker or AI Expert may invoke to achieve a goal.

> AI Coworkers "think". Runbooks govern how thinking becomes action. Runbooks may contain Workflows (which execute the work).

## A Runbook captures:
- Intent and boundaries
- Approved reasoning and execution paths
- Deterministic workflows where precision matters
- Clear handoffs between humans, AI reasoning, and systems

## Executor requirement
A Runbook requires an "executor" — an AI Agent, Expert, or Coworker.
- A Runbook does not replace an AI Coworker.
- A Runbook is what an AI Coworker uses to act **safely, repeatedly, and audibly**.

## Core Principles

### 1. Text-first
- A Runbook always begins as plain language intent
- May remain text-only or expand into structured execution

### 2. Composable
- A Runbook may include one or more workflows
- A workflow may be reused across multiple Runbooks
- A Runbook can call other Runbooks

### 3. Coworker-invoked
- Runbooks are executed *by* AI Agents, not by users directly (except explicitly allowed cases)
- The Agent decides *when* to invoke a Runbook
- The Runbook governs *how* execution proceeds

### 4. Deterministic-ish
- AI reasoning is explicitly bounded
- Deterministic steps exit the AI context as early as possible

## Scope of a Runbook

A Runbook may represent any of:
- A single prompt with output constraints
- A SOP
- A decision tree with limited AI reasoning
- A workflow-backed process (monitor, automation, report)
- A multi-stage operational procedure

## Runbook vs Workflow (Explicit Relationship)

### Workflow
- A deterministic execution graph
- Composed of typed nodes (evaluate, transform, action, output)
- Fully machine-driven
- Fully replayable

### Runbook
- Describes intent and policy
- Selects and sequences workflows
- Defines where AI reasoning is allowed
- Defines escalation, handoff, and approval behavior

> **A workflow is a component of a Runbook.**
> **A Runbook is the operational wrapper that makes workflows safe to use with AI Coworkers.**

## Runbook Example (Workflow-Backed)

```
┌──────────────────────────────┐
│        AI Coworker           │
│ (persistent, role-based)     │
└──────────────┬───────────────┘
               │
               ▼
┌──────────────────────────────┐
│           Runbook            │
│  - Intent                    │
│  - Policy & boundaries       │
│  - AI reasoning rules        │
│  - Handoff logic             │
└──────────────┬───────────────┘
               │ invokes
               ▼
┌──────────────────────────────┐
│         Workflow(s)          │
│  - Deterministic execution   │
│  - Scripts / APIs            │
│  - Monitors / Reports        │
└──────────────┬───────────────┘
               │ returns outcomes
               ▼
┌──────────────────────────────┐
│        AI Coworker           │
│  - Summarizes                │
│  - Recommends                │
│  - Requests approval         │
│  - Escalates if needed       │
└──────────────────────────────┘
```

## Example Runbook (text)

```
Intent:
When CPU exceeds threshold, enrich the incident and recommend remediation.

Steps:
1. Evaluate CPU threshold (workflow)
2. Ask AI to classify likely cause (bounded reasoning)
3. Enrich ticket with context (workflow)
4. Recommend remediation (no auto-execute)
```
