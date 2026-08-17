# AI Coworker Description
**Source:** https://n-able.atlassian.net/wiki/spaces/AI/pages/61774266708/
**Author:** Nicole Reineke
**Last modified:** May 04, 2026
**Space:** AI

---

## 1. Problem Statement

MSPs spend an enormous amount of time performing **repeatable operational tasks**.

- While N-able will supply AI Agents and Experts to support tasks, prebuilt experts will not cover all needs
- MSPs/customers will need to **customize agents**
- Customization tied to *their runbooks/SOPs*, *their use cases*, *their scripts*
- Many tasks are already scriptable, but scripts are risky to run, often gated by expertise or permissions

**AI Coworkers** are how N-able takes AI Expert Agents and lets MSPs modify their tasks, learn new skills, and call Scripts (or other deterministic action-taking devices).

**Value Statement:** When MSPs can customize their AI agents in our secure environment, "the outcome for the MSP is you reduce the number of technicians that you need to deliver the services that you have."

## 2. Product Vision

AI Coworkers are **trusted, task-oriented AI agents** that work alongside MSP technicians.

They do three things well:
- Understand intent
- Choose the safest viable action
- Deliver measurable time savings

**They are not autonomous free-for-alls.** They operate inside guardrails defined by N-able and the MSP.

They:
- Take labor and turn it into software/automation
- Look at how to re-organize labor
- Business Resilience needs to be at machine speed
- Build a control pane for the MSPs and for internal efficiency

## 3. Core Concepts

### AI Coworkers
Configurable AI agent designed to handle a specific category of work (patching, remediation, compliance, scripting).

Each coworker is composed of:
- One or more **AI Experts**
- A **Runbook** defined by N-able or the customer (aka SKILLS)
- Connections to one or more **MCP servers** (N-able ships defaults; customers can clone and customize)
- One or more **Tools** (run Script, call action)

### AI Experts
Specialized AI agents with a clearly defined scope.

Each AI Expert:
- Has an explicit runbook that defines how it reasons and acts
- Is attached to one or more MCP servers
- Can recommend or execute Actions based on risk and permissions
- Does not act outside its runbook
- Owned and managed by N-able

### MCP Servers and Tools
MCP servers expose data or access to secondary locations. They include tools.

There may also be Tools associated with an AI agent that are not in the MCP Server.

Tools may:
- Retrieve data
- Make decisions
- Take action
- One important tool type: **Script Repository access**

#### Script Repository
- Curated, MSP-approved collection of scripts
- Scripts are **explicitly approved by the MSP**
- Each script has a **risk classification**: low / medium / high
- Running a script is considered an **action**
- Scripts represent trusted automation

#### Execution Flow where a Script is involved

**A. Script Exists and Is Approved**
1. User makes a request to an AI Coworker (or time trigger or otherwise triggered)
2. Coworker routes the request to one or more AI Experts to evaluate against its runbook
3. If the request requires it, the Expert searches the Script Repository
4. If a matching script exists, Expert recommends the script
5. Script executed automatically if:
   - Action is low risk (at or below user's risk tolerance), OR
   - User has granted permission
6. All action, reasoning, etc. is logged and explained

**B. Script Does Not Exist**
1. No existing script/tool can solve the request
2. AI Expert calls a **Script Generator Expert**
3. Script Generator designs a new script
4. Script presented to user for review
5. User can:
   - Approve and run it (if permitted)
   - Publish it to Script Repository (if permitted)
   - Submit it for approval if they lack permissions
6. Once approved, script becomes reusable

## 6. Permissions and Risk Model

All actions respect:
- User permissions / token permissions
- MSP approval policies
- Script risk levels

If a user cannot approve or run a script:
- AI clearly explains why
- AI suggests appropriate next step (e.g., submit for approval)
- **No hidden automation is allowed**

## 7. Custom Coworkers

Customers can:
- Clone default N-able coworkers
- Modify the runbook (adjust behavior and scope)
- Add or remove MCPs/tools

Custom coworkers can be:
- Run on demand
- Triggered by events
- Executed on a schedule

This enables MSPs to encode their own SOPs, workflows, and other vendors into AI coworkers.

> **We should build the UX to this up front. This does not need to be second.**

## 8. Value Tracking

Each AI Coworker has an associated **Value Score**.

Value defined as:
- Estimated time to complete the task manually
- Versus time to complete with the AI Coworker

Secondary values: additional devices managed, license fees saved, etc. Design for this up front.

Coworkers ship with default values; adjustable with permissions.

**Value Ledger** tracks:
- Time saved per action / value added on each run
- Aggregate value added per coworker
- Cumulative value over time

Makes AI value visible, measurable, and defensible.

---

## Promoting Agent behavior: 'Human in the loop' → 'Autonomous'

Trustworthiness issue when people first generate and utilize AI Agents and Coworkers.

Ewan Cameron's hypothesis:
> "The concept of **L4 earned autonomy** — where an AI Expert co-worker graduates from 'human confirms' to 'AI executes, human audits' — can be represented as a coherent, self-evident UX concept that a mature MSP would immediately understand without explanation. Specifically, that one of three competing mental models (**track record**, **graduated dial**, or **scope-based guardrail**) will survive a 10-second comprehension test and provoke an instinctive opinion."

In Ewan's experiment, AI Experts and AI Coworkers listed as Task Categories with outcomes/actions assigned a **trust-execution level**.

## UI mockups referenced (images on the page)
- Task category list with trust-execution levels per Coworker
- Click-through into individual Coworker detail
- Example Dashboard
- AI Coworker Manager creation wizard
- Example UI to create an AI Coworker
- Data Substrate concept image
