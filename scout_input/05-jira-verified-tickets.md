# Alpha RACE — verified live Jira tickets (pulled 2026-06-25)

Source: Atlassian MCP, cloudId 21ab04ef-0acf-4e62-b163-a12e66774c17. All [CS: VERIFIED] as live-ticket content.

---

## ADL-1838 — Initiative (Open) · ADL-1839 — Epic (In Progress)
**Title:** Incident Map: Multi-Event Detection Correlation & Incident Story Generation

> A correlation engine that automatically groups related detections and anomalies into unified incident **stories**, giving analysts a single contextualized incident view rather than isolated alerts. Product Feature / Platform Capability (MDR & XDR).

### Problem Statement (verbatim)
> Today, MDR analysts and customers are presented with **individual detections in isolation**, even when those detections are part of the same underlying incident. Analysts must manually hunt across alerts, logs, and tickets to establish context, which: increases investigation time; causes loss of situational awareness during active incidents; produces redundant escalations, tickets, and notifications; contributes directly to customer alert fatigue.
> "Adlumin rather than being an event-driven system needs to evolve to an incident driven experience."

### Hilda — March 2026 (verbatim, the load-bearing customer evidence)
> "We're seeing multiple escalation tickets generated for what is essentially the same underlying activity. For example, Microsoft Defender typically produces two separate events when malicious activity is detected: one for the initial identification of the threat, and another for the action taken in response. In Adlumin, each of these events is treated independently, resulting in one alert per event and therefore one ticket per alert… two events lead to two alerts and two tickets. In addition, any SOAR action executed by Adlumin can generate its own alert… a single incident can produce three to four separate tickets… all tied to the same account, host, or IP."
> "SOAR actions themselves are contributing to alert fatigue… every automated response such as isolation introduces new alerts that are operational rather than investigative… spreading related information across multiple alerts instead of consolidating it into a single, coherent narrative."

### Function Statement (verbatim)
> "Alpha correlates individual detections and anomalies into unified incident stories using probabilistic scoring and standardized detection fields. It presents analysts with a consolidated incident-level view ranked by risk and anomalous behavior."

### Must Have
- Automated correlation of detections/anomalies into incident stories
- Incident-level **probabilistic scoring model** (not static alert severity)
- Standardized fields: user, host, source, destination
- Analyst-facing incident view (dashboard / Abacus-adjacent), **locked to MDR team only**
- Monitoring/metrics for correlation accuracy + incident consolidation rate
- Benchmarking vs existing alert-level workflow
- Shift to **incident notifications** (Email/Tickets) — not all the alerts as before
- Pendo tagging on new UI

### Should Have
- Transparent scoring explanations (analyst trust)
- Correlation stability independent of alert severity labels

### Acceptance Criteria
- Correlated incidents consolidate related detections into a single incident record
- Analyst sees full narrative: what happened / what we did / next steps
- Incident scoring ranks higher-risk above low-signal
- Example: multiple auth anomalies + suspicious process → one lateral-movement incident story

### Out of scope (initial)
- Customer-visible UI/notifications driven by Alpha; real-time (<1min) guarantees; full Abacus/ticketing replacement; non-syscore detections (perimeter etc.); custom detections.

### Success Criteria
- One correlated incident instead of multiple tickets
- MDR analysts use Alpha stories **daily**
- Measurable reduction in investigation time + better prioritization
- Correlation quality independent of alert severity
- Validated/trusted in MDR-only beta, no customer exposure

### Competitive Insights (verbatim)
- **Arctic Wolf** — partial match; some alert grouping but relies heavily on rules
- **CrowdStrike** — some correlation within Falcon detections but not full incident story generation

### Positioning (Executive row, verbatim)
> "This capability addresses top customer pain points and strengthens our multi-event correlation roadmap for differentiated MDR delivery."

### Prioritization Scorecard (ADL-1838)
Revenue Medium · Strategic High · Customer Demand High · Usage High · Competitive High · Marketing Medium · Billing Low · DIR High → **Score 2.57**. (This is the "2.57" — an initiative score, not a Jira priority.)

### Rollout
1. Internal MDR Beta (Black Team) → 2. Blue Team → 3. tune scoring → 4. assess customer-facing readiness separately.

---

## PUT-1166 — Story (DONE, Highest) — Phase 1 design
**Title:** Phase 1: Incident map (aka RACE) Dashboard: Multi-Event Detection Correlation & Incident Dashboard
**Eng Lead:** James Moore · **PM Lead:** Raj Dhesi *(real names — source only, not seed data)*

### Goal (verbatim)
> "Design Phase 1 of an analyst-facing Alpha (RACE) incident view that enables MDR teams to investigate incidents instead of isolated alerts by presenting correlated detections as a single, ranked incident story." MDR-only; establish trust/clarity/efficiency before broader expansion.

### In Scope (Phase 1)
- Incident-level visualization aggregating multiple detections into one incident story
- Incident summary answering: **what happened · why important · what contributed to the score**
- Ranked incident list (probabilistic/anomalous scoring, not static severity)
- Analyst drill-in from incident list → detailed context
- Preserve existing MDR workflows/actions (Abacus actions retained)
- MDR-only beta for Black Team, pathway to Blue Team

### Out of Scope (Phase 1)
- Customer-visible dashboards/notifications; real-time guarantees; Abacus/ticketing replacement; partner/customer self-service.

### Acceptance Criteria
- Ranked list of correlated incidents instead of isolated detections
- Multiple detections of same activity → one incident, not multiple tickets
- Incident detail shows contributing signals, timeline, scoring rationale
- Move from summary → underlying detections without losing context
- Existing MDR escalation/workflow actions remain
- Usable + trusted by MDR Black Team without customer exposure

### Design Deliverables
- Hi-fi designs for Phase 1 incident list + incident detail
- Interaction patterns for drill-in
- Annotation of which scoring/correlation signals are shown vs hidden

### Primary Users
- MDR Analysts (primary); SOC Managers / MDR Leads (secondary, observational Phase 1).
