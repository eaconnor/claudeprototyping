# Raw claims — Coworker/Runbook arch (A), Intent Specs (S), Infra specs (I), Use cases (U)

Compact format: CLAIM-ID | claim (testable) | source | load-bearing. Full validate/refute detail for the load-bearing ones is carried in the crosswalk themes. Infra (I) rows re-sourced to the specs' own open questions per §10b (the acp-core working-copy security-posture note is deliberately not persisted).

## Architecture — AI-AI Coworker Description + AI-Runbooks (Nicole Reineke) — A01–A57

A01 | An AI Coworker is a configurable agent for a specific work category (patching, remediation, compliance, scripting) | Coworker Desc §3 | HIGH
A02 | Each Coworker is composed of one or more AI Experts | §3 | HIGH
A03 | Each Coworker connects to one or more MCP servers | §3 | MED
A04 | N-able ships default coworkers; customers clone + customize them | §3 | HIGH
A05 | Each Coworker has a control pane for MSP + internal N-able efficiency | §3 | MED
A06 | Each Coworker has a Runbook (N-able- or customer-defined), also called "SKILLS" | §3 | HIGH
A07 | Each Coworker has Tools that may execute outside the AI context (fewer tokens, more determinism) | §3 p.3 | MED
A08 | AI Experts are specialized agents with a clearly defined scope | §3 | HIGH
A09 | Each Expert has an explicit runbook defining how it reasons and acts | §3 | HIGH
A10 | Each Expert is attached to one or more MCP servers | §3 | MED
A11 | Each Expert can recommend OR execute Actions based on risk + permissions | §3 | HIGH
A12 | AI Experts do not act outside their runbook | §3 | HIGH
A13 | AI Experts are owned/managed by N-able (not the MSP) | §3 | HIGH
A14 | MCP servers expose data/access to secondary locations and include tools | §3 | MED
A15 | Tools may exist outside an MCP server and agents can call them directly | §3 | MED
A16 | Tools may retrieve data, make decisions, or take action | §3 | LOW
A17 | The Script Repository is a curated, MSP-approved collection of scripts | §3 | HIGH
A18 | Each script has a risk classification: low/medium/high | §3 | HIGH
A19 | Running a script is an "action" (same permission/risk gating) | §3 | HIGH
A20 | A script auto-executes if risk ≤ user tolerance OR user granted permission | §3 Exec Flow A | HIGH
A21 | All actions/reasoning in script-execution are logged and explained | §3 | HIGH
A22 | If no script/tool fits, a Script Generator Expert designs a new one, presented for review before execution | §3 Exec Flow B | HIGH
A23 | User can approve+run, publish to repo, or submit for approval per permissions | §3 | MED
A24 | Approved generated scripts become reusable (added to repo) | §3 | MED
A25 | All actions respect user/token permissions + MSP policy + script risk simultaneously | §3 Perms | HIGH
A26 | If a user can't approve/run, the AI explains why + suggests next step | §3 | HIGH
A27 | No hidden automation allowed — every automated action is visible/attributable | §3 | HIGH
A28 | Customers clone defaults, modify runbook (behavior+scope), add/remove MCPs/tools | §3 | HIGH
A29 | Custom coworkers run on demand, event-triggered, or scheduled | §3 | MED
A30 | Each Coworker has a Value Score = est. manual time vs AI-Coworker time | §8 | MED
A31 | A Value Ledger tracks time saved per action, aggregate per coworker, cumulative | §8 | MED
A32 | **USER-EXPERIENCE:** there is a trustworthiness issue when people first use AI Coworkers | "Promoting Agent behavior" | HIGH
A33 | **USER-EXPERIENCE:** L4 earned autonomy (human-confirms → AI-executes-human-audits) is a self-evident concept a mature MSP grasps without explanation (Ewan Cameron hypothesis) | Ewan Cameron quote | HIGH
A34 | **USER-EXPERIENCE:** exactly one of 3 mental models (track record / graduated dial / scope guardrail) survives a 10-second comprehension test | Ewan Cameron quote | HIGH
A35 | Dashboard lists Experts/Coworkers as a "Task Category" w/ assigned trust-execution level | dashboard desc | LOW
A36 | A Runbook is a governed execution contract a Coworker/Expert invokes to achieve a goal | Runbooks p.1 | HIGH
A37 | Coworkers "think"; Runbooks govern how thinking becomes action | p.1 | MED
A38 | A Runbook may contain Workflows, which execute the work | p.1 | HIGH
A39 | Runbooks capture intent+boundaries, approved reasoning/exec paths, deterministic workflows, handoffs | p.1 | HIGH
A40 | A Runbook requires an executor (AI Agent, Expert, or Coworker) | p.1 | MED
A41 | A Runbook does not replace a Coworker | p.1 | MED
A42 | A Runbook is what a Coworker uses to act safely, repeatably, auditably | p.1 | MED
A43 | Text-first: a Runbook begins as plain-language intent, may stay text-only or expand | Core Principles 1 | MED
A44 | Composable: workflows reused across runbooks; a runbook can call other runbooks | Core Principles 2 | MED
A45 | Coworker-invoked: runbooks run by agents not users (except allowed cases); agent decides when, runbook governs how | Core Principles 3 | HIGH
A46 | Deterministic-ish: AI reasoning explicitly bounded; deterministic steps exit AI context early | Core Principles 4 | MED
A47 | A Runbook may be a single prompt / SOP / decision tree / workflow-backed process / multi-stage procedure | Scope | MED
A48 | A Workflow is a deterministic execution graph of typed nodes, fully machine-driven + replayable | Runbook vs Workflow | HIGH
A49 | A Runbook describes intent+policy, selects/sequences workflows, defines where AI reasoning is allowed, defines escalation/handoff | Runbook vs Workflow | HIGH
A50 | A Workflow is a component of a Runbook; the Runbook is the operational wrapper making Workflows safe with Coworkers | closing | HIGH
A51 | Worked flow: Coworker → Runbook (intent/policy/handoff) → Workflow(s) (deterministic) → outcomes → Coworker (summarize/recommend/approve/escalate) | Example diagram | HIGH
A52 | CPU-threshold example: evaluate threshold → classify cause (bounded) → enrich ticket → recommend remediation, no auto-execute | Example | MED
A53 | Coworkers "are not autonomous free-for-alls" — they operate inside N-able/MSP guardrails | §2 Vision | HIGH
A54 | **VALUE:** Coworkers understand intent, choose the safest viable action, deliver measurable time savings | §2 Vision | HIGH
A55 | **BUSINESS VALUE:** the MSP value prop is customizing agents to reduce the number of technicians needed | §1 Value Statement | HIGH
A56 | **MARKET:** MSPs spend enormous time on repeatable operational tasks | §1 Problem | MED
A57 | **MARKET:** scripts are risky to run and gated by expertise or permissions | §1 Problem | MED

## Intent Specs — FSN-83143 Coworkers / FSN-81539 Value Ledger / FSN-82692 Onboarding (Nicole Reineke, all Draft v0.1.0) — S01–S58
[WOBBLY] single-author drafts; UX/Eng/QA owners TBD; the 22-partner catalog + ACP source brief referenced but not included — priority scores asserted not shown.

S01 | MSP admins want to assemble+deploy a Coworker without relying on docs | FSN-83143 §1 | HIGH
S02 | ≥70% of started builder sessions reach completion | §1 MET-001 | HIGH
S03 | Median builder-start → first activation ≤15 minutes | §1 MET-002 | HIGH
S04 | ≥80% of active Coworkers run successfully within 7 days | §1 MET-003 | MED
S05 | The core value MSPs seek is turning technician labor into software (reduce headcount) | §2 Context | HIGH
S06 | Scripted tasks rarely automated because scripts risky + expertise uneven | §2 (SRC-003) | MED
S07 | MSPs have no trusted mechanism to encode SOPs into agents | §2 (SRC-003) | MED
S08 | The 5 default Coworkers (QBR Advisor, Alert Flood, IR Analyst, Env Health, Security Tabletop) are the highest-priority use cases | §6 DEC-006 | HIGH [DATA GAP: 22-partner data not in file]
S09 | Event-triggered use cases justify shipping event triggers in v1 | §14 DEC-002 | MED
S10 | MSPs need BOTH a runbook catalog AND inline authoring | §9 TRADE-002 | MED
S11 | Admin-initiated autonomy promotion (not automatic) is necessary — automatic would undermine confidence | §9 TRADE-004 DEC-005 | HIGH
S12 | Time-saved must be visible on every Coworker view — "the north star" for engagement | §5 INV-TASTE-002 | MED
S13 | Coworkers named ("Resolved by Coworker Jacqueline") not "AI/Bot" — affects trust | §7 INV-TASTE-001 | LOW
S14 | MSPs will clone defaults rather than build every Coworker from scratch | §6 REQ-002/016 | MED
S15 | MSPs need the Script Generator concept signaled now (spec'd not built) to avoid a roadmap dead-end | §9 TRADE-003 | LOW
S16 | ACP has zero dependency on N-Central/other N-able products — standalone entry point | §8; FSN-82692 | HIGH
S17 | Admins understand exactly what an autonomy-promotion changes before confirming | UX-STATE-008 | MED
S18 | An AI operator can assemble a Coworker config for admin review, and admins actually review (not rubber-stamp) | §3, REQ-017 | HIGH
S19 | Approval authority for med/high-risk may need delegating to technicians | §13 OQ-001 (open) | LOW
S20 | MSPs want a single time+money-saved dashboard, trusted as accurate/auditable/own-baselines | FSN-81539 §1 | HIGH
S21 | >40% of tenants configure ≥1 custom baseline within 30 days | §1 MET-002 | MED
S22 | MSPs report "trust the numbers" as majority sentiment in first research round | §1 MET-004 | MED
S23 | Without customization MSPs dismiss the dashboard as "made-up numbers" | §1 Anti-success | MED
S24 | Not tracking AI-reasoning value as a distinct category makes MSPs undercount value | §1-2 | MED
S25 | The Value Score concept reflects what MSPs actually want tracked/defended in a QBR | §2 (SRC-001) | HIGH [DATA GAP]
S26 | FTE hard savings are ≤⅓ of total automation value; the other ⅔ must be tracked | §2 (SRC-005 Optezo) | LOW — imported from generic RPA lit
S27 | "1.0 FTE eliminated" materializes as 0.5–0.75 in practice → display time/cost not headcount | §2 | LOW
S28 | Direct-input tenant-declared baselines are more accurate/trusted than platform estimates | §2, §9 TRADE-002 | MED
S29 | MSP Admins want a client-shareable PDF/CSV value summary (for QBRs) | §3, REQ-013 | MED
S30 | device_count is the sufficient v1 secondary value metric | §4 SCOPE-006 | LOW
S31 | MSP labor rates are sensitive; MSPs withhold real rates without privacy assurance | §8 | MED
S32 | Default baselines must be conservative — over-claiming erodes trust faster | §9 TRADE-001 | MED
S33 | The execution engine emits a completion event with task_category/action_type/actual_duration | §8 DEP-001 | HIGH [DATA-ACCESS GAP: dep status Unknown]
S34 | Coworkers/Experts reliably report estimated_human_minutes for ai_reasoning runs | §8 DEP-003 | HIGH [DATA-ACCESS GAP: dep Unknown; own TECHRISK-001 names this failure]
S35 | Task-category default manual-time baselines can be researched + made defensible pre-launch | §12 Q-001 | HIGH [DATA GAP: open/blocking, research not done]
S36 | A single fixed default hourly rate is acceptable despite $25–150/hr variance | §12 Q-002 | MED
S37 | Platform-level aggregate value metrics surface without reverse-engineering tenant data | §8 PROHIBIT-003 | MED
S38 | estimated_human_minutes:0 for ai_reasoning is "almost certainly a bug" | §6 EDGE-002 | LOW
S39 | Fixed 160 hr/month FTE denominator acceptable for all tenants | §12 Q-007 | LOW
S40 | QBR Advisor scored #1 platform default by partner research (priority 2.90) | FSN-83143 §6 DEC-006 | HIGH [DATA GAP: methodology/raw data not in files]
S41 | A net-new MSP goes signup → running Coworker in <20 min without support | FSN-82692 Outcome | HIGH
S42 | ≥80% who start onboarding complete it (reach first successful run) | §1 MET-002 | HIGH
S43 | PSA-connection-step drop-off <15% | §1 MET-003 | HIGH
S44 | First run against real ticket data succeeds without system error ≥95% | §1 MET-004 | HIGH
S45 | ≥60% who complete onboarding activate a 2nd Coworker within 7 days | §1 MET-005 | MED
S46 | MSP admins evaluate in "stolen time between calls" — a single ~20-min session is the whole window | §2 Context | MED [no cited source]
S47 | Making the MSP watch+approve a live medium-risk batch action is worth ~2 min friction (builds trust) | §2, INV-005 | MED
S48 | Ticket Triage (not QBR/IR-RCA) is the right first coworker to activate in onboarding | §1, §3 | MED
S49 | Capping the first run at exactly 10 tickets is the right balance | §12 OQ-004 (open) | LOW
S50 | A single PSA-agnostic connection framework serves onboarding without per-PSA redesign | §2, §17 | HIGH [only ConnectWise implemented; Autotask/Halo NONGOAL-008]
S51 | Locking the conservative approval policy during onboarding (no config) is right for a net-new MSP | §9 INV-009 | MED
S52 | Requiring a schedule before onboarding-complete correctly prevents the "not-autonomous-user" failure | §9 INV-007 | LOW — structurally unfalsifiable as specified
S53 | Showing real MSP data immediately post-connect is categorically more motivating than placeholder copy | §5 UX intent | LOW [no cited research]
S54 | The onboarding user is a non-developer MSP operator who self-serves PSA API credentials without support | §3 USER-001 | HIGH
S55 | The exact ConnectWise API scopes are known well enough to build the credential guide + validation | §19 OQ-001 (open, blocking) | HIGH [DATA GAP]
S56 | A specific AI Expert exists + Active in registry to power Ticket Triage by launch | §19 OQ-002 (open, blocking) | HIGH [DEP GAP]
S57 | Whether ACP must support ConnectWise on-prem (not just cloud) is unresolved, yet connection-test is being built | §19 OQ-007 (open, blocking) | HIGH [DATA GAP]
S58 | The completion-screen "time saved per ticket" baseline can launch as a placeholder without harming trust | §19 OQ-003 (↔ FSN-81539 Q-001) | HIGH [DATA GAP — first value number the MSP sees]

## Infra Specs — FSN-81484 Runbook Engine / FSN-82688 AI Expert / ACP Management Plane (Nicole Reineke) — I01–I31
Auth-gap rows sourced to the specs' OWN open questions (OQ-001), per §10b.

I01 | MSPs will clone+customize N-able default runbooks rather than build from scratch | FSN-81484 §2 | HIGH
I02 | A Coworker resolves+loads a full runbook config tree in <200ms p95 | MET-001 | HIGH
I03 | Runbooks are composable via nested child-runbooks at v1 | §2 | HIGH — internal contradiction (changelog v0.1.1 ships WITHOUT nested runbooks)
I04 | Workflow registry + script repo exist as queryable services at activation-validation time | §12 ASM-001 | HIGH (DEP status Unknown/High)
I05 | Tenant isolation enforced via shared tenant_id, not per-tenant DBs | §12 ASM-002 | MED
I06 | A stable "runbook family" ID persists across versions; Coworkers bind by family | §12 ASM-004 | MED
I07 | MSPs need runtime friction controls (polling/schedule/sleep/expiry) for resource mgmt | §5 | MED [WOBBLY, no research]
I08 | The engine detects a missing/deleted workflow ref at invocation + fails gracefully (degraded) | EDGE-003 | HIGH
I09 | The audit system returns the exact config snapshot for any past execution in <2s | MET-003 | MED
I10 | An AI Expert is architecturally an MCP server + domain system prompt | FSN-82688; §20 | MED — spec hedges ("implementation hint, not requirement")
I11 | AI Experts can directly EXECUTE actions within domain+risk ceiling | Compact intent | HIGH — contradicts §20 "Experts may not directly execute... advisory" + REQ-008
I12 | Expert invocation returns structured reasoning to the Coworker in <500ms p95 | MET-001 | HIGH (DEP-007 unresolved)
I13 | The MCP/Tool Registry exists + queryable at Expert-activation-validation time | §15 DEP-001 | HIGH — OQ-002: "tool registry does not exist yet", blocking
I14 | A finite Expert-"domain" taxonomy can be established before the data model is finalized | OQ-001 | HIGH — open, blocking
I15 | The invocation API reliably distinguishes in-scope vs out-of-scope and errors rather than answering plausibly-wrong | REQ-009 | HIGH — unproven LLM self-assessment
I16 | MSPs accept N-able-owned, non-customizable Experts (no custom Experts v1) as sufficient | Compact intent, NONGOAL-001 | MED [WOBBLY]
I17 | Coworkers on a deprecated Expert version keep functioning to a deadline without backports | REQ-013 | MED
I18 | Only N-able service identities can author Experts v1; enforceable at auth layer | REQ-002 | HIGH
I19 | Expert system prompts stay fully hidden from MSPs across all payloads (no leakage) | §20; TEST-009 | MED
I20 | The management plane can be fully+safely operated by an MCP AI client "exactly as a human would" — no capability gap | Mgmt-Plane | HIGH — foundational architecture bet
I21 | "No separate AI mode; the MCP server is the canonical interface" — auto-generated schemas suffice for a safe AI operator | Mgmt-Plane | HIGH — the spec's own OQ-001 lists the management-MCP auth model as Open/unresolved, so the permission-boundary this depends on is not yet defined
I22 | An AI operator renders a proposed change "in plain language" a non-technical admin can review without raw JSON | Mgmt-Plane | MED [WOBBLY]
I23 | The exec-plane risk-tier framework transfers cleanly to management-plane ops without a separate model | Mgmt-Plane | MED
I24 | The management-MCP auth model (admin token vs delegated service token) is a resolved v1 decision | Mgmt-Plane OQ-001 | HIGH — OQ-001 is Open; the "never exceeds admin's permissions" invariant is unenforced until it resolves
I25 | Ownership of AI-created objects attributes to the approving admin via metadata, sufficient for audit/liability | Mgmt-Plane | MED [CS: UNKNOWN — no legal source]
I26 | A "proposed changeset" construct is built once + reused across Runbook/Coworker/Approval-policy types | Mgmt-Plane | MED
I27 | Every management op (human/AI) captured in one audit schema with actor_type/delegated_by/approval_chain from day one | Mgmt-Plane | HIGH
I28 | An admin can pre-authorize some AI op types to skip the review queue while preventing scope creep | Mgmt-Plane OQ-003 | MED — unresolved
I29 | FSN-81484 + Mgmt-Plane specs are in sync on schema (approved_by/on_behalf_of in the runbook model) | cross-spec | HIGH — FSN-81484 REQ-001 lists only created_by; live cross-spec gap
I30 | Activation always requires explicit human sign-off in v1; no pre-authorized autonomous activation | Mgmt-Plane | HIGH
I31 | A Coworker trust/autonomy score is reliably computed from version-specific execution history (version change resets/flags it) | FSN-81484 §3 | MED — cross-spec, unverified

## Use cases — Top_10_ACP_Use_Cases + N-UEM-Coworker-Use-Cases (Nicole Reineke) — U01–U13, U-EV01–06

U01 | MSPs want QBR/business-report generation enough to rank it #1 | Top10 pos.1 | HIGH — only ranked item cross-referenced w/ named partner quotes
U02 | MSPs want alert-flood suppression/correlation (#2) | pos.2 | MED — catalog UC-09 tagged "Aspirational"
U03 | MSPs want incident RCA report generation (top-10) | body (no TOC entry) | LOW — doc internally inconsistent
U04 | MSPs want a security-tabletop simulator (top-3/4) | pos.4 | LOW — zero catalog support
U05 | MSPs want continuous env-health sweep (top-5) | pos.5 | LOW — no catalog match
U06 | MSPs want MSP-internal employee onboarding (top-5) | pos.5 | LOW — unsupported
U07 | MSPs want customer employee on/offboarding (top-6/7) | pos.6/7 | LOW — unsupported
U08 | MSPs want standardized new-customer onboarding (top-7/8) | pos.7/8 | LOW — unsupported
U09 | MSPs want network incident diagnosis+remediation (top-8/9) | pos.8/9 | LOW — no direct match
U10 | MSPs want cross-customer peer benchmarking (top-9/10) | pos.9 | LOW — unsupported, distinct from CVE-benchmark analog
U11 | MSPs want ticket-triage-and-dispatch (top-10) | pos.10 | HIGH — best-evidenced outside QBR (UC-04, multiple quotes) but "Aspirational"
U12 | MSPs want M&A integration automation (top-11/12) | pos.11 | LOW — zero catalog theme
U13 | MSPs want DR-failover orchestration (#12) | pos.11 | LOW — unsupported, section itself incomplete
U-EV01 | The evidence base is 22 independent partner interviews | cover + App.6 | HIGH — count doesn't reconcile (~19-20, includes Nicole herself); grep before quoting "22"
U-EV02 | The base includes both buyers + operators, triangulating the purchase chain | Buyer/Beneficiary fields | HIGH — only Aaron Betts carries WTP (~$30/user), reused across two use cases; [WOBBLY]
U-EV03 | Dominant blocker is data access/accuracy, not lack of interest | Themes 1,3,7 | MED — concentrated in 2 repeat-quoted individuals; [WOBBLY]
U-EV04 | The N-UEM catalog is direct evidence for the ACP top-10/12 ranking | headers | HIGH — catalog titled N-UEM (different product); only 2 of 12 ranked items have a match; ~83% unsupported
U-EV05 | The 22 interviews are a methodologically independent sample for a priority ranking | App.6, §1 | HIGH — self-selected beta/CAB convenience sample, framed as qual feedback not demand study; [WOBBLY]
U-EV06 | The catalog quotes are cleared for external/customer-facing use | line 16, 257 | MED — only 1 of ~20 quotes carries the "approved" marker

**Ranking-divergence note:** Nicole's own Top-10 puts QBR at #1, agreeing at the top with a QBR-first ordering. But the cited catalog can't corroborate #2–#12 (tags nearly everything "High," and only QBR↔UC-01 + Alert Flood↔UC-09 map at all). The #1 agreement is real but thin; the ordering below #1 is unvalidated by the cited evidence.
