# UX-INTENT-SPEC.template.md — the UX-integrated intent spec

**This is not a variant format. It is `Intent_Spec_Example.md`'s own 20-section**
**shape, with the mechanics a UX/research-led kickoff actually produces made**
**load-bearing instead of decorative.**

That distinction matters because of what happened to the last version of this idea.
An 82-line addendum saying "most teams should skip this" was appended to the org
template and it was the wrong call — RACI, evidence status, the change-request
channel, and scoped sign-off are not a toolkit's opt-in extra. They are what a real
kickoff produces before anyone can honestly write §0-§20. Burying them as a footnote
in someone else's document was burying the point.

**Use this file as your project's `INTENT_SPEC` when the kickoff itself — who's
accountable for what, whether the draft is evidenced, how a discipline pushes back —
is part of what you're standing up.** Use the base `Intent_Spec_Example.md` directly
when that groundwork is already settled elsewhere and you only need §0-§20.

Base template reference, unchanged: `briefs/handoffs/what's up with the humans in
the org's own Intent Spec example (internal path withheld)`. Confirmed as the real org standard
by matching two independent production documents section-for-section
(`acp-core-main-3/Intent Specs/FSN-83143_AI_Coworkers_in_ACP.md`,
`test-repo-doodle-journal/Intent Specs/doodle-journal.md`) — this file inherits that
lineage rather than replacing it.

---
intent_spec_id: IC-YYYY-NNN
title: "<Short descriptive name>"
version: "0.1.0"
status: "Draft" # Discovery | Draft | UX Review | Technical Review | Risk Review | Ready for Agent Planning | Implementation | Verification | Released | Learning | Closed

# EVIDENCE BASIS — separate from status: above on purpose. status: is workflow stage;
# this is whether the claims in §0-§9 below are evidenced or invented. A spec can sit
# in Draft for months while its claims read as settled fact. "I don't know" resolves
# to HYPOTHESES — it is a positive claim that requires someone able to point at
# evidence, not a penalty for admitting this is a first draft.
#   HYPOTHESES  nobody in the room can point at evidence for the load-bearing claims.
#               Legitimate and the normal state at kickoff. Routes to a pre-spec
#               phase: this document is not yet signable (see Signatures, below).
#   FINDINGS    every load-bearing claim has a source_material: entry someone can
#               point at. Locatable, not necessarily rigorous.
#   MIXED       some of each — the per-row Confidence column in §12 carries the
#               real weight; this field only says "do not assume the rest is settled."
evidence_basis: HYPOTHESES
evidence_basis_stated_by: "Ada Lovelace"

created_at: YYYY-MM-DDTHH:MM:SSZ
updated_at: YYYY-MM-DDTHH:MM:SSZ
target_release: "<release / milestone / unknown>"

# ROSTER & RACI — who is on the project and what they hold. Accountability is a
# property of a DECISION, not of the project as a whole: real teams end up with
# several people each accountable for a different area, and that is correct RACI,
# not a defect to resolve into one name. List every area that has a person; leave a
# row `UNASSIGNED` rather than omitting it — the toolkit blocks on the absence of the
# question, never on the absence of the answer.
roster:
  - name: "Ada Lovelace"
    project_role: "Solo founder — product, design, research"
    raci:
      product: R
      design: R/A
      research: R/A
      engineering: UNASSIGNED
  - name: "Sponge Bob"
    project_role: "Product Exec / accountable executive"
    raci:
      product: A
      design: UNASSIGNED
      research: UNASSIGNED
      engineering: UNASSIGNED
  # Engineering R/A unassigned across the board — no engineer yet, a checker is
  # anticipated but not staffed. Logged as OPEN.md ACCEPTED.

# The project-wide signer, distinct from any area's A above. Required even when every
# area already has its own accountable name, because some actions don't belong to one
# area — this is who check-tier.py's T2/T3 resolve to for those.
accountable_owner: "Ada Lovelace"
research_owner: "Grace Hopper"
risk_function: "Legal — Matlock"

# ESCALATION PATH. Who a signature conflict, or a refusal to sign, goes to. The
# toolkit never adjudicates this itself — a conflict is an OPEN.md row typed HUMAN,
# and this is its owner. An escalation path that never actually gets used is
# untested, not proven; say so rather than assuming it works.
escalation_path: "Ada Lovelace"
escalation_path_tested: false

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

# THE AUTHORIZATION CONTRACT (CLAUDE.md §9b), read by check-judgment.sh. Decision
# uncertainty — what should we build? — is BLOCKED. Evidence uncertainty — do we have
# enough research? — is PROCEED-FLAGGED. Different questions; do not conflate them.
confidence_regime: ‹PROCEED | PROCEED-FLAGGED | PROCEED-PARTIAL | BLOCKED›
proceed_because: ‹one sentence — why this document is worth having in this state›
machine_behavior: ‹e.g. "treat every §1-§4 claim as [A] until tagged otherwise · do
  not claim validation · UXI requirements are provisional until §5 is signed"›

# Read by check-condens.sh as the comparison point for research drift: a cited
# artifact updated after this date has moved since a human last looked. Copying
# today's date without reading the sources defeats it, and nothing can detect that.
reconciled_at: ‹YYYY-MM-DD›

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
> **`evidence_basis:` above governs how confidently that "wins" should be read.**

---

## Roster & RACI — expanded

**Restated from frontmatter in table form, because a YAML block is not how a
disagreement about ownership actually gets read out loud in a room.**

| who | project role | product | design | research | engineering |
|---|---|---|---|---|---|
| Ada Lovelace | Solo founder — product, design, research | R | R/A | R/A | UNASSIGNED |
| Sponge Bob | Product Exec / accountable executive | A | UNASSIGNED | UNASSIGNED | UNASSIGNED |

**Reading this table:** an area with no A is unowned and every T2/T3 signature for it
resolves to `accountable_owner` by default — say so if that's not what you want. An
area where the same name is both R and A means the person doing the work also signs
off on it; not wrong at this team size, but worth stating rather than discovering.

**Signature-conflict rule, stated once here rather than per-signature below:** when
two people who both hold a stake disagree on what this document says, it routes to
`escalation_path:` above. Nobody defaults past it. If `escalation_path_tested: false`,
treat the first real use as also a test of whether the path works at all.

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
- Respect `evidence_basis:` — do not treat a HYPOTHESES claim as settled.
- Produce an implementation plan before code changes.
- Reference acceptance criteria and invariants by ID.
- Escalate rather than infer when encountering blockers listed in Section 12, or a
  signature conflict per the Roster & RACI rule above.
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

**Owner:** Product + Research
**Load policy:** Load for planning; summarize for implementation
**Stability:** Mostly stable

### Why this work exists

<!-- Customer pain, business need, research finding, incident history, support signal, strategic priority, operational need. -->

### Relevant background

- `<Background point>`
- `<Background point>`

### Source evidence

| Source ID | What it contributes | Link | Basis |
|---|---|---|---|
| SRC-001 | `<e.g. customer pain / business context>` | `<url>` | `<R/D/A/? — CLAUDE.md §9 claim tagging>` |
| SRC-002 | `<e.g. user flow / design rationale>` | `<url>` | `<R/D/A/?>` |

**If `[A]` + `[?]` exceeds 30% of the rows above, say so in the Compact build intent
(§0) — that threshold is the line between a spec and a wish (CLAUDE.md §9).**

---

## Change requests — the channel this base shape does not have

**`traces_to:` and every ID cross-reference in this document point FROM a criterion**
**UP to this spec. Nothing points back.** Design, research and engineering each
interrogate an intent spec by nature — research asks *is this true*, engineering asks
*is this buildable and what does it cost* — and without a channel those arrive as
corridor conversations instead of a record, and this document quietly stops matching
what anyone actually believes.

Rejected is a legitimate outcome for a row below. Silent is not.

| id | target (§N / UXI-## / REQ-##) | asked by | discipline | what they are asking | status |
|---|---|---|---|---|---|
| CR-001 | `<target>` | `<name>` | `<product/design/research/eng>` | `<the change requested, and why>` | `<open / accepted / rejected — with reason>` |

**A change request that would take this document from `evidence_basis: HYPOTHESES`**
**toward `FINDINGS` is the highest-priority row type** — it is research doing the job
`evidence_basis:` exists to track. Tag it as such in the "asking" column.

---

<a id="IC-3-users"></a>
## 3. Users and affected parties

**Owner:** Product + UX + Research
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

### Out of scope / non-goals

| Non-goal ID | Explicitly excluded | Reason |
|---|---|---|
| NONGOAL-001 | `<Excluded behavior>` | `<why>` |

### Scope boundary rules

- `<Rule that prevents agent from expanding scope>`
- `<Rule that clarifies what requires approval>`

---

<a id="IC-5-ux-intent"></a>
## 5. UX intent — `UXI-##`

**Owner:** UX
**Load policy:** Load when UI, copy, user flow, accessibility, or interaction behavior is touched
**Stability:** Stable before implementation

**This is the section `check-trace.sh` resolves `UXI-##` against. Renumbering a row's**
**id after a criterion has traced to it breaks that criterion — add rows at the end.**

### Experience principles

- `<Principle 1>`
- `<Principle 2>`
- `<Principle 3>`

### Desired user feeling

The experience should feel:

> `<calm / controlled / trustworthy / fast / deliberate / serious / lightweight / etc.>`

The experience should not feel:

> `<casual / celebratory / ambiguous / risky / noisy / generic / etc.>`

### Requirements

| id | requirement | basis | notes |
|---|---|---|---|
| UXI-01 | `<what must be true of the experience>` | `<[R]/[D]/[A]/[?]>` | `<notes>` |
| UXI-02 | `<…>` | `<…>` | `<…>` |

> **If `evidence_basis:` above is `HYPOTHESES`, every row here should be tagged**
> **`[A]`.** A `UXI-##` id looks identical whether it came from research or from
> guessing at kickoff — the id doesn't carry the caveat, the tag does.

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

### Accessibility requirements — **FLOOR, not FIT**

**Never gated on problem validation. Do not wait for a reaction test to label a form**
**field.** These apply regardless of `evidence_basis:` above, and regardless of
whether Gate 1/2 have passed.

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

### Error handling

| Error ID | Error / failure mode | User/system behavior | Observability required |
|---|---|---|---|
| ERR-001 | `<failure mode>` | `<expected handling>` | `<log/metric/alert>` |

---

<a id="IC-7-invariants"></a>
## 7. Invariants — split FLOOR / FIT

**Owner:** Product + Engineering + Risk owners
**Load policy:** Always load
**Stability:** Non-negotiable unless explicitly amended

> Invariants are promises that must remain true regardless of implementation
> approach. **FLOOR invariants (accessibility, data integrity, lawfulness, security)**
> **are never gated on problem validation and apply even under `evidence_basis:**
> **HYPOTHESES`.** FIT invariants are polish that only pays off if the concept
> survives, and may legitimately wait.

### Product invariants — FIT

| Invariant ID | Promise that must remain true | Evidence required |
|---|---|---|
| INV-PROD-001 | `<product promise>` | `<test/eval/review/check>` |

### Technical invariants — FLOOR (data integrity)

| Invariant ID | Promise that must remain true | Evidence required |
|---|---|---|
| INV-TECH-001 | `<data integrity / compatibility / performance / reliability promise>` | `<test/metric/check>` |

### Security, privacy, compliance, and risk invariants — FLOOR

**If this project touches personal data — anything about an identifiable person,**
**including someone's own free-text or recorded content — this section is live now,**
**not deferred to a later gate.** Name the lawful basis and whether special-category
data (Art. 9 GDPR) is involved, or name who owes that answer as a row in §12 typed
`HUMAN`. Processing special-category data without a reviewed lawful basis is a never
event in this toolkit: zero acceptable rate, investigated every time, never averaged.

| Invariant ID | Promise that must remain true | Evidence required | Signed by (risk_function) |
|---|---|---|---|---|
| INV-RISK-001 | `<authorization / privacy / audit / compliance promise>` | `<security test/audit log/review>` | `<name>` |

### Taste / product-character invariants — FIT

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
- The agent must stop and escalate on blocking ambiguity, per the Roster & RACI rule.
- The agent must produce an evidence packet before marking work complete.
- **The agent must never fill `evidence_basis:`, a §5 requirement, or a Change**
  **request row on anyone's behalf. An unfilled judgment slot is `[?]`, never a**
  **license to draft.**

---

<a id="IC-12-open-questions"></a>
## 12. Open questions and uncertainty

**Owner:** Product maintains; section owners resolve
**Load policy:** Always load until empty or explicitly non-blocking
**Stability:** Must be resolved or classified before `Ready for Agent Planning`

**Type every row, matching `OPEN.md`'s convention** — this is the same register,
restated at the document level:

- **HUMAN** — a decision no amount of research resolves. An agent that guesses past
  this row has made the exact error the type exists to prevent.
- **RESEARCH** — a question evidence can settle. Routes to `research_owner`.
- **ACCEPTED** — named and knowingly left open; not blocking.

| Question ID | Question / uncertainty | Type | Owner | Status | Blocks agent planning? | Resolution |
|---|---|---|---|---|---|---|
| Q-001 | `<question>` | `<HUMAN/RESEARCH/ACCEPTED>` | `<owner>` | Open | Yes/No | `<resolution>` |

### Assumptions

| Assumption ID | Assumption | Confidence | Safe to proceed? | Owner |
|---|---|---:|---|---|
| ASM-001 | `<assumption>` | Low/Med/High | Yes/No | `<owner>` |

### Escalation triggers

The agent must pause and escalate — to `escalation_path:` in frontmatter — if:

- `<Trigger>`
- A signature conflict arises per the Roster & RACI rule above.
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

**Owner:** QA + Engineering + UX + Research + Risk owners
**Load policy:** Always load for verification
**Stability:** Stable before implementation

| Evidence ID | Evidence required | Format | Owner | Maps to |
|---|---|---|---|---|
| EV-001 | `<test result / screenshot / log / trace / metric / review>` | `<format>` | `<owner>` | AC-FUNC-001 |

### Evidence packet requirements

The implementation agent must produce:

- Intent Spec ID and version used, and the `evidence_basis:` it was authored under.
- Summary of implementation.
- Requirement IDs satisfied.
- Invariant IDs checked, marked FLOOR or FIT.
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

<a id="IC-17-decision-log-signatures"></a>
## 17. Decision log and sign-off

**Owner:** Product maintains; decision makers and signers contribute
**Load policy:** Load for planning and review; summarize for implementation
**Stability:** Append-only after `Ready for Agent Planning`

### Decision log

| Decision ID | Date | Decision | Alternatives considered | Rationale | Owner |
|---|---|---|---|---|---|
| DEC-001 | YYYY-MM-DD | `<decision>` | `<alternatives>` | `<why>` | `<owner>` |

### Sign-off — scoped, not void-all

**Everyone on the Roster signs, and so does anyone named `accountable_owner:`,**
**`research_owner:`, or `risk_function:` who isn't already a Roster row — those**
**three are explicitly allowed to be someone else (see Step 2 of `/ux-kickoff`),**
**and a document with no place for them to sign has no place for them to refuse,**
**either. Scope their row to the sections their frontmatter owner tag actually**
**appears on. An edit voids signatures only over the section it**
**landed in — a typo fix should notify, a changed acceptance criterion should void.**
Reuse `check-condens.sh`'s content-hash-vs-baseline mechanism if this repo has it
rather than re-deriving a diff.

**Two different signatures — conflating them is the failure mode:**
- **AGREE** — I think this is right. Only for sections you're competent to judge.
- **READ** — I have read it and won't later claim nobody told me. Always legal, never a rubber stamp.

| who | role | AGREE / READ | sections | date |
|---|---|---|---|---|
| `<name>` | `<role>` | `<AGREE / READ>` | `<§ range>` | `<YYYY-MM-DD>` |

**A refusal to sign, or a disagreement between two signers, is not a blocker to route**
**around — it is an `OPEN.md` row typed `HUMAN`, owned by `escalation_path:`.**

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

---

## Honest limits of this template

**It cannot make a claim evidenced.** `evidence_basis:`, the `[R]/[D]/[A]/[?]` tags,
and the Change requests table only make the *absence* of evidence visible — that is
all a document can do; a person still has to go find out what's true.

**RACI does not prevent the disagreement it's meant to route.** Naming
`escalation_path:` is not the same as it working — `escalation_path_tested: false` is
the honest default until a real conflict has actually gone through it once.

**Nothing outside this document reads its Roster, Change requests, or Sign-off**
**tables automatically, unless your toolkit has scripts pointed at them.** They are
documentary the same way `confidence_regime:` sat documentary until
`check-judgment.sh` was built against it — real, and inert until wired.

**Do not let an agent fill in `evidence_basis:`, a §5 requirement, a RACI cell, or a**
**Change request row.** A generated self-assessment is a self-assessment nobody made.
The gap is the deliverable.
