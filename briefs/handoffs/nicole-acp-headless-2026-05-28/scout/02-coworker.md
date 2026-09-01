# AI Coworker Description

**Source:** Confluence space AI, authored by Nicole Reineke  
**Last modified:** 2026-05-28 (11 minutes before retrieval)  
**URL:** https://n-able.atlassian.net/wiki/spaces/AI/pages/61774266708

[CS: VERIFIED] — Retrieved directly from Confluence

---

## Core Concepts

### AI Coworkers
An AI Coworker is a configurable AI agent designed to handle a specific category of work, such as patching, remediation, compliance, or scripting.

Each coworker is composed of:
- One or more **AI Experts**
- A **Runbook** defined by N-able or the customer (AKA SKILLS)
- Connections to one or more **MCP servers**
- One or more Tools (aka run Script or call action) which may happen outside of the context of the AI Agent

### AI Experts
AI Experts are specialized AI agents with a clearly defined scope.

Each AI Expert:
- Has an explicit runbook that defines how it reasons and acts
- Is attached to one or more MCP servers
- Can recommend or execute Actions based on risk and permissions
- AI Experts do not act outside their runbook
- AI Experts are owned and managed by n-able

### Trust Model (Earned Autonomy)
From Ewan Cameron's experiment on graduated trust levels:
- AI Experts and Coworkers can graduate from "human confirms" to "AI executes, human audits"
- Track record determines trust level
- Visual UI shows task categories with trust-execution levels

### Value Tracking
Each AI Coworker has an associated **Value Score**:
- Estimated time to complete manually vs. with AI Coworker
- Secondary values like additional devices managed, license fees saved
- Coworkers ship with default values, adjustable with permissions

A **Value Ledger** tracks:
- Time saved per action/value added on each run
- Aggregate value added per coworker  
- Cumulative value over time

This makes AI value visible, measurable, and defensible.

---

**Problem Statement:**
MSPs spend enormous time on repeatable operational tasks. While prebuilt experts help, MSPs need to customize agents tied to their runbooks/SOPs and use cases. AI coworkers let MSPs modify tasks, learn new skills, and call Scripts in a secure environment.

**Value Statement:**
When MSPs can customize their AI agents in our secure environment, "The outcome for the MSP is you reduce the number of technicians that you need to deliver the services that you have."
