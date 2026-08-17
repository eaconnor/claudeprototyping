---
intent_spec_id: IC-YYYY-NNN
title: "<Short descriptive name>"
version: "0.1.0"
status: "Draft" # Discovery | Draft | UX Review | Technical Review | Risk Review | Ready for Agent Planning | Implementation | Verification | Released | Learning | Closed
created_at: YYYY-MM-DDTHH:MM:SSZ
updated_at: YYYY-MM-DDTHH:MM:SSZ
target_release: "<release / milestone / unknown>"

owners:
  product: "<name>"
  ux: "<name>"
  engineering: "<name>"
  qa: "<name>"
  data_analytics: "<name or N/A>"
  security_privacy_compliance: "<name or N/A>"

agent_context:
  canonical_source: true
  default_context_profile: "planning"
  summary_generated_at: null
  summary_source_version: null
  summary_source_hash: null

source_material:
  - id: SRC-001
    type: "Product brief"
    title: "<title>"
    link: "<url>"
    owner: "<name>"
    status: "Current"
  - id: SRC-002
    type: "Design"
    title: "<Figma / prototype / flow>"
    link: "<url>"
    owner: "<name>"
    status: "Current"
  - id: SRC-003
    type: "Technical discovery"
    title: "<title>"
    link: "<url>"
    owner: "<name>"
    status: "Current"

tags:
  product_area: ["<area>"]
  surfaces: ["web", "api", "admin", "mobile"]
  systems: ["<service>", "<database>", "<job>", "<queue>"]
  risk_level: "low | medium | high"
  user_impact: "low | medium | high"
---

# Intent Spec: <Title>

> This is the canonical build spec for this work.
> Agents should not treat linked artifacts as independently authoritative unless this spec explicitly says to load them.
> When this spec conflicts with a source artifact, this spec wins unless marked provisional.

---

<a id="IC-0-agent-summary"></a>
## 0. Agent summary

**Owner:** Product + Engineering  
**Load policy:** Always load  
**Max summary length:** 300-600 words  
**Stability:** Must be regenerated when material sections change

### Compact build intent

<!-- A short plain-language summary of what should be built, why, who it is for, and the most important constraints. -->

### Most important rules

1. `<Rule or invariant the agent must not violate>`
2. `<Rule or invariant the agent must not violate>`
3. `<Rule or invariant the agent must not violate>`

### Required agent behavior

- Use this spec version: `<version>`.
- Produce an implementation plan before code changes.
- Reference acceptance criteria and invariants by ID.
- Escalate rather than infer when encountering blockers listed in Section 12.
- Produce an evidence packet mapped to Section 15.

---

<a id="IC-1-outcome"></a>
## 1. Desired outcome

**Owner:** Product  
**Load policy:** Always load  
**Stability:** Stable before `Ready for Agent Planning`

### Outcome statement

When this work is complete:

> `<User/customer/business/system outcome that should become true.>`

### Success looks like

- `<Observable result 1>`
- `<Observable result 2>`
- `<Observable result 3>`

### Success metrics

| Metric ID | Metric | Target / expected movement | Source | Owner |
|---|---|---:|---|---|
| MET-001 | `<metric>` | `<target>` | `<dashboard/event/source>` | `<owner>` |

### Anti-success / failure signals

- `<Signal that indicates the implementation missed the intent>`
- `<Support, telemetry, behavior, or quality signal to watch>`

---

<a id="IC-2-context"></a>
## 2. Context and rationale

**Owner:** Product  
**Load policy:** Load for planning; summarize for implementation  
**Stability:** Mostly stable

### Why this work exists

<!-- Explain customer pain, business need, research finding, incident history, support signal, strategic priority, or operational need. -->

### Relevant background

- `<Background point>`
- `<Background point>`

### Source evidence

| Source ID | What it contributes | Link |
|---|---|---|
| SRC-001 | `<e.g. customer pain / business context>` | `<url>` |
| SRC-002 | `<e.g. user flow / design rationale>` | `<url>` |

---

<a id="IC-3-users"></a>
## 3. Users and affected parties

**Owner:** Product + UX  
**Load policy:** Always load summary; expand when user behavior or permissions are touched  
**Stability:** Stable before implementation

| User / actor ID | User or actor | Needs / goals | Permissions / constraints | Notes |
|---|---|---|---|---|
| USER-001 | `<user type>` | `<need>` | `<permission boundary>` | `<notes>` |
| USER-002 | `<internal actor/system>` | `<need>` | `<constraint>` | `<notes>` |

### Primary user journey

1. `<Step>`
2. `<Step>`
3. `<Step>`

### Affected secondary parties

- `<Support, ops, admin, compliance, downstream system, etc.>`

---

<a id="IC-4-scope"></a>
## 4. Scope and non-goals

**Owner:** Product  
**Load policy:** Always load  
**Stability:** Stable before `Ready for Agent Planning`

### In scope

| Scope ID | Item | Notes |
|---|---|---|
| SCOPE-001 | `<Included behavior / surface / system>` | `<notes>` |
| SCOPE-002 | `<Included behavior / surface / system>` | `<notes>` |

### Out of scope / non-goals

| Non-goal ID | Explicitly excluded | Reason |
|---|---|---|
| NONGOAL-001 | `<Excluded behavior>` | `<why>` |
| NONGOAL-002 | `<Excluded behavior>` | `<why>` |

### Scope boundary rules

- `<Rule that prevents agent from expanding scope>`
- `<Rule that clarifies what requires approval>`

---

<a id="IC-5-ux-intent"></a>
## 5. UX intent

**Owner:** UX  
**Load policy:** Load when UI, copy, user flow, accessibility, or interaction behavior is touched  
**Stability:** Stable before implementation

### Experience principles

- `<Principle 1>`
- `<Principle 2>`
- `<Principle 3>`

### Desired user feeling

The experience should feel:

> `<calm / controlled / trustworthy / fast / deliberate / serious / lightweight / etc.>`

The experience should not feel:

> `<casual / celebratory / ambiguous / risky / noisy / generic / etc.>`

### Interaction expectations

- `<Expected interaction behavior>`
- `<Expected confirmation / friction / progressive disclosure behavior>`
- `<Expected recovery behavior>`

### Content and tone

| Content area | Guidance | Required / prohibited language |
|---|---|---|
| Primary CTA | `<guidance>` | `<required/prohibited text>` |
| Empty state | `<guidance>` | `<required/prohibited text>` |
| Error state | `<guidance>` | `<required/prohibited text>` |

### Key user states

| State ID | State | Required behavior | UX notes |
|---|---|---|---|
| UX-STATE-001 | Loading | `<behavior>` | `<notes>` |
| UX-STATE-002 | Empty | `<behavior>` | `<notes>` |
| UX-STATE-003 | Error | `<behavior>` | `<notes>` |
| UX-STATE-004 | Success | `<behavior>` | `<notes>` |
| UX-STATE-005 | Permission denied | `<behavior>` | `<notes>` |

### Design references

| Design ID | Artifact | Link | What is authoritative here |
|---|---|---|---|
| DESIGN-001 | `<Figma/prototype>` | `<url>` | `<layout / interaction / copy / state behavior>` |

### Accessibility requirements

| A11Y ID | Requirement | Evidence required |
|---|---|---|
| A11Y-001 | `<keyboard / screen reader / contrast / focus / semantics>` | `<test/check/screenshot>` |

---

<a id="IC-6-behavior"></a>
## 6. Functional behavior

**Owner:** Product + Engineering  
**Load policy:** Always load for implementation  
**Stability:** Stable before implementation

### Behavior requirements

| Requirement ID | Requirement | User / actor | Priority |
|---|---|---|---|
| REQ-001 | `<System/user behavior>` | USER-001 | Must |
| REQ-002 | `<System/user behavior>` | USER-001 | Should |
| REQ-003 | `<System/user behavior>` | USER-002 | Could |

### Edge cases

| Edge ID | Scenario | Expected behavior | Owner |
|---|---|---|---|
| EDGE-001 | `<edge case>` | `<expected behavior>` | `<owner>` |
| EDGE-002 | `<edge case>` | `<expected behavior>` | `<owner>` |

### Error handling

| Error ID | Error / failure mode | User/system behavior | Observability required |
|---|---|---|---|
| ERR-001 | `<failure mode>` | `<expected handling>` | `<log/metric/alert>` |

---

<a id="IC-7-invariants"></a>
## 7. Invariants

**Owner:** Product + Engineering + Risk owners  
**Load policy:** Always load  
**Stability:** Non-negotiable unless explicitly amended

> Invariants are promises that must remain true regardless of implementation approach.

### Product invariants

| Invariant ID | Promise that must remain true | Evidence required |
|---|---|---|
| INV-PROD-001 | `<product promise>` | `<test/eval/review/check>` |

### Technical invariants

| Invariant ID | Promise that must remain true | Evidence required |
|---|---|---|
| INV-TECH-001 | `<data integrity / compatibility / performance / reliability promise>` | `<test/metric/check>` |

### Security, privacy, compliance, and risk invariants

| Invariant ID | Promise that must remain true | Evidence required |
|---|---|---|
| INV-RISK-001 | `<authorization / privacy / audit / compliance promise>` | `<security test/audit log/review>` |

### Taste / product-character invariants

| Invariant ID | Promise that must remain true | Evidence required |
|---|---|---|
| INV-TASTE-001 | `<experience or tone promise>` | `<UX review/screenshot/copy check>` |

---

<a id="IC-8-constraints"></a>
## 8. Constraints and dependencies

**Owner:** Engineering + Product  
**Load policy:** Load for planning; expand when touching constrained systems  
**Stability:** Stable before implementation

### Technical constraints

- `<Architecture, infrastructure, API, data model, performance, compatibility, or migration constraint>`

### Business / operational constraints

- `<Timeline, launch, support, legal, go-to-market, or process constraint>`

### Dependencies

| Dependency ID | Dependency | Owner | Status | Risk |
|---|---|---|---|---|
| DEP-001 | `<dependency>` | `<owner>` | `<status>` | `<risk>` |

### Prohibited approaches

| Prohibited ID | Do not do this | Reason |
|---|---|---|
| PROHIBIT-001 | `<approach>` | `<why>` |

---

<a id="IC-9-tradeoffs"></a>
## 9. Tradeoffs and priority rules

**Owner:** Product + UX + Engineering  
**Load policy:** Always load for planning; summarize for implementation  
**Stability:** Stable before implementation

When choices conflict, prefer:

1. `<Correctness over speed / safety over automation / trust over delight / etc.>`
2. `<Existing infrastructure over new services / reversibility over optimization / etc.>`
3. `<Explicit confirmation over streamlined flow / etc.>`

### Decision rules

| Rule ID | Situation | Preferred choice | Rationale |
|---|---|---|---|
| TRADE-001 | `<conflict>` | `<choice>` | `<why>` |

---

<a id="IC-10-technical-plan"></a>
## 10. Technical plan

**Owner:** Engineering  
**Load policy:** Load for implementation; summarize for planning  
**Stability:** May evolve during implementation, but changes must be recorded

### Affected systems

| System ID | System / component | Expected change | Risk |
|---|---|---|---|
| SYS-001 | `<service/component>` | `<change>` | `<risk>` |

### Proposed approach

<!-- Describe the intended implementation approach at the level useful for an agent. -->

### Data model / API changes

| Change ID | Type | Description | Backward compatibility notes |
|---|---|---|---|
| TECH-001 | `<schema/API/job/event>` | `<description>` | `<notes>` |

### Migration / rollout considerations

- `<Migration, backfill, feature flag, data compatibility, rollback consideration>`

### Known technical risks

| Risk ID | Risk | Mitigation | Owner |
|---|---|---|---|
| TECHRISK-001 | `<risk>` | `<mitigation>` | `<owner>` |

---

<a id="IC-11-agent-permissions"></a>
## 11. Agent permissions

**Owner:** Engineering  
**Load policy:** Always load  
**Stability:** Stable before implementation

### Agent may modify

- `<files/directories/services/tests/docs>`
- `<safe autonomous changes>`

### Agent must request review before modifying

- `<sensitive area>`
- `<migration>`
- `<permissions/auth/billing/security/privacy/infrastructure area>`

### Agent must not modify

- `<off-limits system/file/data/config>`
- `<reason>`

### Required implementation behavior

- The agent must produce a plan before code changes.
- The agent must map planned work to requirement IDs, invariant IDs, and acceptance criteria IDs.
- The agent must stop and escalate on blocking ambiguity.
- The agent must produce an evidence packet before marking work complete.

---

<a id="IC-12-open-questions"></a>
## 12. Open questions and uncertainty

**Owner:** Product maintains; section owners resolve  
**Load policy:** Always load until empty or explicitly non-blocking  
**Stability:** Must be resolved or classified before `Ready for Agent Planning`

| Question ID | Question / uncertainty | Owner | Status | Blocks agent planning? | Resolution |
|---|---|---|---|---|---|
| Q-001 | `<question>` | `<owner>` | Open | Yes/No | `<resolution>` |

### Assumptions

| Assumption ID | Assumption | Confidence | Safe to proceed? | Owner |
|---|---|---:|---|---|
| ASM-001 | `<assumption>` | Low/Med/High | Yes/No | `<owner>` |

### Escalation triggers

The agent must pause and escalate if:

- `<Trigger>`
- `<Trigger>`
- `<Trigger>`

---

<a id="IC-13-definition-of-done"></a>
## 13. Canonical Definition of Done

**Owner:** Product + UX + Engineering + QA + Risk owners  
**Load policy:** Always load  
**Stability:** Stable before implementation

This work is done when all required criteria below are satisfied and evidenced.

### Functional completion

| AC ID | Acceptance criterion | Requirement IDs | Evidence IDs |
|---|---|---|---|
| AC-FUNC-001 | `<observable behavior>` | REQ-001 | EV-001 |

### UX completion

| AC ID | Acceptance criterion | UX/state IDs | Evidence IDs |
|---|---|---|---|
| AC-UX-001 | `<UX behavior / state / copy / accessibility criterion>` | UX-STATE-001 | EV-002 |

### Technical completion

| AC ID | Acceptance criterion | System / invariant IDs | Evidence IDs |
|---|---|---|---|
| AC-TECH-001 | `<technical criterion>` | SYS-001, INV-TECH-001 | EV-003 |

### Risk / compliance completion

| AC ID | Acceptance criterion | Invariant IDs | Evidence IDs |
|---|---|---|---|
| AC-RISK-001 | `<risk/security/privacy/compliance criterion>` | INV-RISK-001 | EV-004 |

### Documentation / operational completion

| AC ID | Acceptance criterion | Evidence IDs |
|---|---|---|
| AC-OPS-001 | `<docs/runbook/release/support readiness criterion>` | EV-005 |

---

<a id="IC-14-testing-observability"></a>
## 14. Testing, evaluation, and observability

**Owner:** QA + Engineering + Data  
**Load policy:** Load for implementation and verification  
**Stability:** Stable before implementation

### Required tests

| Test ID | Test type | What it proves | Required? | Maps to |
|---|---|---|---|---|
| TEST-001 | Unit | `<proof>` | Yes | AC-FUNC-001 |
| TEST-002 | Integration | `<proof>` | Yes | AC-TECH-001 |
| TEST-003 | E2E | `<proof>` | Yes | AC-UX-001 |
| TEST-004 | Accessibility | `<proof>` | Yes | A11Y-001 |
| TEST-005 | Security/privacy | `<proof>` | Yes | INV-RISK-001 |

### Required instrumentation

| Event / metric ID | Name | Purpose | Owner | Maps to |
|---|---|---|---|---|
| OBS-001 | `<event/metric/log/trace>` | `<why>` | `<owner>` | MET-001 |

### Dashboards / alerts

| Monitor ID | Signal | Expected behavior | Owner |
|---|---|---|---|
| MON-001 | `<signal>` | `<expected>` | `<owner>` |

---

<a id="IC-15-evidence"></a>
## 15. Evidence requirements

**Owner:** QA + Engineering + UX + Risk owners  
**Load policy:** Always load for verification  
**Stability:** Stable before implementation

| Evidence ID | Evidence required | Format | Owner | Maps to |
|---|---|---|---|---|
| EV-001 | `<test result / screenshot / log / trace / metric / review>` | `<format>` | `<owner>` | AC-FUNC-001 |
| EV-002 | `<UX screenshot / screen recording / accessibility check>` | `<format>` | `<owner>` | AC-UX-001 |
| EV-003 | `<technical test / migration proof / perf result>` | `<format>` | `<owner>` | AC-TECH-001 |

### Evidence packet requirements

The implementation agent must produce:

- Intent Spec ID and version used.
- Summary of implementation.
- Requirement IDs satisfied.
- Invariant IDs checked.
- Acceptance criteria satisfied.
- Tests run and results.
- Screenshots or recordings, if UI changed.
- Logs, traces, metrics, or dashboard links, if observability changed.
- Risks, deviations, and unresolved items.
- Human review areas.

---

<a id="IC-16-release-rollout"></a>
## 16. Release and rollout plan

**Owner:** Product + Engineering  
**Load policy:** Load for release work; summarize for implementation  
**Stability:** May evolve before release

### Rollout strategy

- `<feature flag / staged rollout / beta / internal-only / full launch>`

### Rollback plan

- `<rollback steps>`
- `<data or migration caveats>`

### Customer / support communication

- `<release note / support note / customer-facing message>`

### Post-release monitoring

| Signal ID | Signal | Expected result | Action if abnormal |
|---|---|---|---|
| REL-001 | `<metric/log/support signal>` | `<expected>` | `<action>` |

---

<a id="IC-17-decision-log"></a>
## 17. Decision log

**Owner:** Product maintains; decision makers contribute  
**Load policy:** Load for planning and review; summarize for implementation  
**Stability:** Append-only after `Ready for Agent Planning`

| Decision ID | Date | Decision | Alternatives considered | Rationale | Owner |
|---|---|---|---|---|---|
| DEC-001 | YYYY-MM-DD | `<decision>` | `<alternatives>` | `<why>` | `<owner>` |

---

<a id="IC-18-verification-summary"></a>
## 18. Verification summary

**Owner:** Engineering + QA + Product + UX  
**Load policy:** Load during verification  
**Stability:** Filled after implementation

### Delivered behavior

<!-- What was actually delivered. -->

### Evidence produced

| Evidence ID | Status | Link / location | Notes |
|---|---|---|---|
| EV-001 | Pass/Fail/Partial | `<link>` | `<notes>` |

### Deviations from spec

| Deviation ID | Deviation | Approved by | Follow-up |
|---|---|---|---|
| DEV-001 | `<deviation>` | `<owner>` | `<follow-up>` |

### Verification result

- Product: Pass/Fail/Partial
- UX: Pass/Fail/Partial
- Engineering: Pass/Fail/Partial
- QA: Pass/Fail/Partial
- Risk: Pass/Fail/Partial/N/A

---

<a id="IC-19-learning"></a>
## 19. Post-delivery learning

**Owner:** Product + Engineering + UX + Support/Data as needed  
**Load policy:** Load during learning and future related specs  
**Stability:** Filled after release

### What happened after release

<!-- Usage, support signals, customer response, production behavior, regressions, incidents, surprises. -->

### Lessons learned

- `<lesson>`
- `<lesson>`

### Updates to institutional memory

| Memory ID | Update | Should affect future specs? | Owner |
|---|---|---|---|
| MEM-001 | `<new invariant / edge case / test / design principle>` | Yes/No | `<owner>` |

---

<a id="IC-20-change-log"></a>
## 20. Change log

**Owner:** Product or Engineering lead  
**Load policy:** Load when validating freshness  
**Stability:** Append-only

| Version | Date | Change | Changed by | Reason |
|---|---|---|---|---|
| 0.1.0 | YYYY-MM-DD | Initial draft | `<name>` | `<reason>` |
