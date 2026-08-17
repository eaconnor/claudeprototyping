---
artifact: ux.md
kind: main                      # main | mini
project: ACP — Agent Control Plane
owner: Beth Connor
status: DRAFT                   # SKELETON | DRAFT | LIVE — flipped 2026-07-30, most sections now have real content
drift: FRESH                    # per refresh-datadump convention — reconciled 2026-07-30
confidence_score: UNSCORED      # see §8 — computed, not asserted; do this last, once content settles
mini_docs:
  - briefs/context/qbr-ebr.ux.md         # QBR/EBR offering — DRAFT, 2026-07-28
built_from:
  - briefs/qbr-ebr-experience-map-2026-07-28.md
  - scout_input/SECONDARY-SOURCES-REGISTER-qbr-ebr-2026-07-28.md
  - datadump-manual-human-steps.md
  - Confluence "ACP Research Datadump (living)" (AI space, 62175674556)
  - acp-core-main-3/Intent Specs/FSN-83143_AI_Coworkers_in_ACP.md (canonical build spec)
  - acp-core-main-3/Intent Specs/ACP-Management-Plane-AI-Operator-Model.md
  - briefs/vision-synthesis-2026-07-27.md
  - briefs/systems-maps-2026-07-27.md
  - scout_input/lewis-persona-library-cast-2026-07.md
  - scout_input/01-control-plane.md
last_updated: 2026-07-30
confidence_regime: PROCEED-FLAGGED
proceed_because: content just landed 2026-07-30 from real sources (FSN-83143, vision synthesis, systems maps) — more useful in draft now than withheld until every section is scored
machine_behavior: surface [CS:] tags visibly · do not claim validation · treat §8 as unscored until a real pass runs
---

# ACP — ux.md

**Scorecard** (per Constitution Principle VII, `acp-core-main-3`):

🟡 **Gate 1** (problem framed) — FSN-83143 problem statement + alpha=USER-001 locked; Map 1/4 not yet rendered, Chris Dunlop's architecture map not found.
🔴 **Gate 2** (right thing) — No Idea Chess/Council pass at the ACP level yet. Only the QBR/EBR sub-offering has a fresh one; the other 4 have delta-erratum vs. 2026-07-06 testimony. Full Council 44 pass deferred to Friday chores.
🟡 **Gate 3** (built right) — §6 acceptance criteria populated from FSN-83143 REQ-001–024 + the SUS ship-gate (≥6 to ship, ≥8 top five tasks); §8 confidence score not yet computed.

One file both Will (design) and acp-core eng can open and trust is current. Sections below flow
together on purpose — no separate designer-doc / eng-doc fork. Machine-readable frontmatter above;
human-readable synthesis below; §6 doubles as literal UX acceptance criteria, not just narrative.

**Status as of 2026-07-30:** this file moved from skeleton to draft this session. Most Gate 1/2
sections now carry real, cited content pulled from the canonical spec (FSN-83143), the reconciled
vision synthesis, and the systems-maps pass — not invented fresh. Where a section is still
genuinely empty, it says so plainly rather than being silently skipped.

**How to read the gate tags — every section is tagged with which gate it serves:**

| Gate | Question it answers | Who owns it |
|---|---|---|
| **Gate 1** | Is the problem framed right? | Design's live judgment. Expect this to move. |
| **Gate 2** | Are we making the right thing? | Design-led. Eng weighs in on feasibility; doesn't own the call. |
| **Gate 3** | Are we making the thing right? | Where eng mostly lives — tested how, by whom, against what criteria. The stable layer. |

Gate and confidence are different axes. A Gate 1/2 section can be `[CS: VERIFIED]` (a well-sourced persona is still a live judgment about which problem to prioritize). A Gate 3 section can still be `[PENDING]`. Gate tag = how much this is still design's to change. Confidence tag = how well-evidenced it currently is. Eng: treat Gate 1/2 as context you need, not spec to build against — §6's lower half and §8 are the stable layers.

**How to read the inline confidence tags:**

| Tag | Means |
|---|---|
| `[CS: VERIFIED]` | We have the actual document or confirmed the person's identity |
| `[CS: HIGH]` | Well-sourced; not personally verified |
| `[A]` | Assumed — not yet sourced |
| `[?]` | Unknown; needs research |
| `[WOBBLY]` | Single source or narrow tradition — don't treat as consensus |

**How design, eng, and an AI actually use this file — not just read it:**

- **Design (Will):** read Gate 1/2 (§1, §2, §3, §5, §7) *before* sketching — that's the "am I
  solving the right problem for the right person" check. When reviewing a design or prototype,
  check it against §6's Musts using the paired Built-in Test, not against taste.
- **Eng:** §6's Gate 3 half (Tasks, Function/feature structure, Musts, Built-in Tests) is the
  literal acceptance-criteria layer — build against it directly. Several Built-in Tests are
  already machine-checkable as written (ticket-conversion, artifact-freshness, content-ratio) —
  these can become literal automated evals on a coworker's output, not just a PR-review checklist.
- **AI in spec:** if an AI (a build agent, a coworker, this session) is asked to spec or build an
  offering that has a mini context.md, **that file is a required read before `speckit-specify`
  runs, not optional background.** The mini's Gate 3 content should be cited directly into the
  generated Intent Spec's acceptance-criteria section — re-deriving it from scratch is exactly the
  failure mode this whole apparatus exists to prevent (an AI re-researching what's already been
  synthesized, and re-introducing the errors that were already caught and corrected). Gate 1/2
  content stays advisory to the AI — it can read it, it can flag a conflict, it cannot resolve an
  open decision or promote a `PROPOSED` tag to settled on its own.

**Three questions the researcher would ask — before you sketch or ship:**

- **Am I making something that provides value?** Which task in §6 does this serve? If none — is this scope creep?
- **What am I missing?** Which claims in the section I'm building against are still `[A]`, `[?]`, or `[PENDING]`? Would a different resolution change the design?
- **Why does this matter?** Is the pain named in §1? Is the person most affected in the cast list? If not, that person hasn't been named yet.

The agent gate below enforces these as machine-checkable rules.

---

## [AGENT GATE] — Read before generating

> **The researcher in the room.** This file is Beth Connor's (Apex UX Manager) research judgment made legible. When an AI reads it, the researcher is present. These rules are non-negotiable and override default generation behavior.

**Required before any spec, build, or critique output touching this offering:**

1. **Confirm read.** State that you have read this file in full before generating output. If you haven't read it, stop and read it first.

2. **Check confidence regime.** If `confidence_regime` in frontmatter is `PROCEED-FLAGGED`, mark all outputs provisional and surface `[CS:]` tags visibly. If `BLOCKED`, stop and name the blocker — do not generate past it.

3. **Flag `[A]` and `[?]` claims you're building on.** Mark: `[FLAG: This output treats [claim] as settled — it is still [A]/[?] in ux.md §n. Confirm before spec freezes.]`

4. **Name conflicts with `[CS: VERIFIED]` or `[CS: HIGH]` claims.** If your output contradicts a verified claim in this file, say so: `[CONFLICT: [your claim] contradicts ux.md §n — "[quoted claim]".]` Do not resolve the conflict. Surface it.

5. **Do not promote `PROPOSED`.** A `PROPOSED` section is an interpretive call, not settled evidence. Flag any output built on it: `[FLAG: Built on PROPOSED interpretation in §n — not confirmed.]`

6. **Do not resolve open decisions.** §7 and all `[?]` items may not be treated as answered by any agent. Surface them as named gaps. Resolution routes through Beth → Meaghan → Nicole only — per CLAUDE.md §18 (epistemic division of labor). An AI cannot close what the researcher left open.

7. **Gate on >30% `[A]`/`[?]`.** If the section you're building against has more than 30% assumed or unknown claims, say so before generating: `[GATE: This section is >30% [A]/[?]. Output will be provisional — Beth's confirmation required before spec freezes.]`

8. **Mini-doc is required reading.** If this offering has a mini-doc listed in `mini_docs:` frontmatter, read it before generating. Deriving acceptance criteria from scratch when a verified mini-doc already exists is the failure mode this apparatus exists to prevent.

9. **Verify any ratio or count before including it in output.** The 47% rule: grep the source before you quote the number. Fluency does not know its own math.

10. **Note divergence from the canonical spec — don't resolve it.** ux.md is allowed to carry
    alternate value/positioning the canonical Intent Spec hasn't decided, or has decided
    differently — that's expected, especially from Idea Chess content, and it will happen often.
    **Why this rule exists:** design/UX/research pushing on the canonical spec to make sure it
    delivers enough value is a permanent, healthy tension, not friction to eliminate — design/
    research and Product resolve the actual MVP *together*, in that tension. A `[SPEC DIVERGENCE]`
    entry is that pressure made visible and trackable. An AI does not get to settle it by picking
    a side.

    **Log it, don't scatter it as prose.** Every offering's mini-doc keeps one **Divergence Log**
    table (see qbr-ebr.ux.md §5a for the working example) with this shape:

    | ID | Divergence | vs. spec | Status | Owner | Resolution |
    |---|---|---|---|---|---|
    | DIV-001 | one-line statement of what ux.md assumes/proposes | `<spec ID> §n` — quoted or paraphrased spec position | 🔴 open / 🟡 resolving-with-Product / 🟢 resolved | Beth / Beth+Nicole / Product | date + what was decided, once 🟢 |

    Status is the machine-checkable field — same discipline as the 47% rule, grep it, don't
    self-report it:
    - 🔴 **open** — genuine unresolved tension. Design/research and Product haven't met on it yet.
    - 🟡 **resolving-with-Product** — known, in motion, expected to close (e.g. a build-sequencing
      dependency already being worked, not a standoff). Still surfaced, just not urgent-escalate.
    - 🟢 **resolved** — state the decision and date. A resolved row stays in the log; it does not
      get deleted, so the reconciliation has a record.

    **Agent behavior:** before generating spec, build, or critique output for an offering, check
    that offering's Divergence Log. Any 🔴 row touching the section you're building against gets
    surfaced per rule 4 (`[CONFLICT: ...]`) — do not treat it as settled. 🟡 rows can be mentioned
    as known-in-progress without blocking. 🟢 rows are safe to build against as stated.

    **Sub-specs may carry alternate or additional personas — that's expected, not an error.** A
    mini ux.md's persona work does not need to be a subset of the canonical spec's actor table.
    The job is to **map the full cast** (every player in that offering's story — not just the
    primary persona) and log where that cast differs from or extends the canonical spec's user
    list, using the same Divergence Log. This mapping may need to be redone or expanded as new
    mini-docs are added — treat it as a living cross-reference, not a one-time reconciliation.

---

## 1. The problem, and for whom — `Gate 1` · `[WORLD_MODEL]`

> **TL;DR:** Named persona(s), sourced not invented. The call about which problem to prioritize stays live design judgment until Gate 1 is settled — this section moves.

**Problem statement — canonical, FSN-83143 §2, verbatim:** "MSPs spend an enormous fraction of
their operational time on repeatable, high-volume IT tasks: patching, alert triage, endpoint
health checks, ticket resolution, compliance audits, and QBRs. Evidence from 22 partner interviews
confirms these tasks are scriptable but are rarely fully automated because scripts are risky
without governance, expertise is unequally distributed across technician teams, and MSPs have no
trusted mechanism to encode their SOPs into agents." `[CS: VERIFIED — canonical_source: true]`

**The core value proposition, same source:** "take labor and turn it into software." The outcome
for the MSP is reducing the number of technicians needed to deliver the services they have
contracted. `[CS: VERIFIED — FSN-83143 §2]`

Who: named persona(s), sourced — not invented. Reuse verified operator evidence `[CS: VERIFIED]`[^1] rather than a fabricated composite.

**Locked 2026-07-30 (Beth's call — do not re-open):** Alpha persona (the owner/growth-squeezed
operator, per the vision-synthesis corpus) **and USER-001 (MSP Admin, FSN-83143 §3) are the same
person, not two personas.** In the target small-shop MSP, the owner wears the Admin/configurator
hat too — the Lewis persona library's own `owner` card names this directly: "in a small shop, the
buyer, escalation point, salesperson, and often still a technician." `[CS: VERIFIED — Beth]`

**Cast list — who this is actually about** (template; fill in as personas are verified):

| Who | Role in this story | Evidence quality |
|---|---|---|
| **Alpha persona = USER-001 (MSP Admin)** — the owner/growth-squeezed operator | Primary creator/configurator of Coworkers *and* the business owner in a small shop — one person, two functions | `[CS: VERIFIED — Beth, 2026-07-30]` |
| **Buyer/decision-maker at scale — Lewis `owner` persona's own named split: "Owner-operator (and the PE-backed contrast)"** | At larger/PE-backed MSPs, Admin and owner *do* split: the owner-operator becomes a PE-backed CEO/CFO who "wants portfolio roll-ups, board-ready exports, integration tooling, unit economics — running to a thesis and a clock," while a distinct `tenadmin` (Platform/tenant administrator) role absorbs the day-to-day USER-001 configurator work. Resolves the prior `[PENDING]` directly — the split point is *scale-driven*, named in Lewis's own card, not invented here. | `[CS: MEDIUM]` — sourced from `scout_input/lewis-persona-library-cast-2026-07.md`, not independently verified against Nicole's model |
| **Adjacent roles — named from the Lewis 26-persona library** | `tenadmin` (Platform/tenant administrator) — the likely large-shop USER-001 split-off, above. `sdm` (Service delivery manager) — oversees Coworker adoption at the delivery-floor level once a fleet exists, not just one Coworker. `am` (Account manager/vCIO) — presents Coworker-driven value inside QBRs/renewals; see `qbr-ebr.ux.md` §1 for the QBR-specific instance of this role. `intaud`/`extaud` (Internal/External auditor-GRC) — the human counterpart to FSN-83143 USER-005 (Audit/Compliance Reviewer). `autoeng` (Centralized-services/automation engineer) — the role whose labor the "take labor and turn it into software" value prop (FSN-83143 §2) most directly targets; worth naming since nobody currently interviews this persona directly. | `[CS: MEDIUM]` — same source; named gap becomes a named hypothesis, not yet fielded |

Include: why the primary persona relates to any N-able internal reviewer (domain expertise vs. end-user reality). Name gaps where additional roles likely exist but have no corpus evidence.

**4A's treatment — Ambitions / Attitudes / Actions / Anxieties** (basic pass, 2026-07-30; `[?]` where unsourced rather than invented):

| Persona | Ambitions | Attitudes | Actions | Anxieties |
|---|---|---|---|---|
| **Alpha persona (USER-001 / owner-operator, small shop)** | Grow the MSP without proportionally growing headcount — "take labor and turn it into software" is the value prop written for exactly this person `[CS: VERIFIED — FSN-83143 §2]`. Per Lewis's `owner` card: "grows recurring revenue and margin, keeps clients and staff, and tries not to get blindsided." `[CS: MEDIUM — persona-library]` | Wants "a trustworthy signal that things are under control — not to live in the platform" `[CS: MEDIUM — Lewis `owner` card]`. Likely risk-averse about ceding judgment to AI, given the accountability gap named in Map 3's fishbone (no certification, unresolved legal/liability boundary) — `[A]`, not directly sourced from this persona's own words. | "The buyer, escalation point, salesperson, and often still a technician" in a small shop `[CS: MEDIUM — Lewis]`; configures/creates/activates Coworkers per FSN-83143 USER-001 `[CS: VERIFIED]`. | `[?]` — no first-person evidence of what this persona specifically fears (reputational risk if an AI Coworker errs? liability exposure?). Plausible from the Map 3 fishbone's liability spine, but that's inferred, not this persona's own voice. |
| **Buyer/decision-maker at scale (PE-backed CEO/CFO)** | "Running to a thesis and a clock" — portfolio growth, exit multiple, roll-up economics `[CS: MEDIUM — Lewis `owner` card, PE-backed contrast]`. | Numbers-first, board-facing; wants roll-ups and unit economics, not console time. `[CS: MEDIUM]` | Consumes portfolio dashboards and board exports; delegates day-to-day configuration to `tenadmin`. `[CS: MEDIUM]` | `[?]` — unsourced. Plausibly acquisition/integration risk (bringing acquired MSPs' tenants onto ACP cleanly) but not evidenced for this persona specifically. |

Full 4A's on the adjacent-roles row (`tenadmin`/`sdm`/`am`/`intaud`-`extaud`/`autoeng`) not attempted here — five distinct roles bundled in one cast-list row would need to split out first. Flagged, not done.

## 2. Journey / orienting map — `Gate 1` · `[WORLD_MODEL]` `[BRIDGE]`

> **TL;DR:** Two ACP-wide process maps exist and are ready to render as real diagrams — the Head-Nerd advisory flow (with its bottleneck marked) and the fleet dependency/gate map. QBR/EBR has its own dedicated experience map at the offering level.

- **ACP-wide (this file's level):** `briefs/systems-maps-2026-07-27.md` — five text maps, grounded in the Joe/Lewis/Stefanie corpus, explicitly flagged by their own author as ready to render: **Map 1 (STS/bottleneck)** — the Head-Nerd advisory flow (Diagnose → Kit → Fit → Certify → Deliver, with the scarce-judgment constraint marked at three steps) and **Map 4 (fleet/gate)** — which offerings gate on Q1/Q2/Gate C, and how B (Control Plane) and the vCISO/vCIO packaging layer sit over A–E. `[CS: HIGH — internal, Joe/Lewis/Stefanie transcript-grounded; strategic overlays tagged [A] in the source]`
- **Offering-level (QBR/EBR only, so far):** the six-phase QBR/EBR experience map (`briefs/qbr-ebr-experience-map-2026-07-28.md`) and the canonical service blueprint (`briefs/ebr-service-blueprint-2026-07-29.md`) — see `qbr-ebr.ux.md` §2 for the full citation.
- **Not yet found:** an engineering-side architecture diagram (Chris Dunlop, engineering owner on FSN-83143 and the other Intent Specs) that could ground the systems/technical half of this map and let the UX journey work backward from the actual system boundaries, not just the business-process view. Checked locally — no such diagram exists in this repo (`acp-core-main-3` specs, CLAUDE.md, or the 2026-07-24 runbooks-transcript files that place him in the room). `[?]` — likely lives in Confluence or only in Chris's own head; worth asking him directly rather than inferring one.
- 5Es (Entice/Enter/Engage/Exit/Extend — queued into the journey-map skill, task #6), the PICNIC-style worksheet (requested, not yet built) remain `[PENDING]`.
- **Rendering status:** Map 1 and Map 4 are the two the source doc itself calls "worth a real diagram" — rendering them (SVG/FigJam) is a mechanical next step, not new research. `[PENDING — render on next pass]`

## 3. Four-angle view of the space — `Gate 1 / Gate 2` · `[WORLD_MODEL]`

> **TL;DR:** Four angles on the space — what people do, what surrounds them, what they need, who gets value from whom. Filled at the ACP-wide level this pass, pulling from the systems maps and the department-level architecture docs. Mini-docs still add their own offering-specific version (see qbr-ebr.ux.md §3 for the QBR-specific fill).

Four angles build a fuller picture: Activities (what the user does), POEMS (People, Objects, Environment, Messages, Systems/Services — what's in the physical and digital surround), Five Human Factors (what the user needs — physical, social, emotional, cultural, cognitive), and Value Webs (who exchanges value with whom — a right-thing question). Activities and Human Factors lean Gate 1 (understanding); Value Webs leans Gate 2 (right-thing judgment). Framework credit: Whitney Quesenbery, IIT Institute of Design.[^2]

| Lens | Prompt | Content |
|---|---|---|
| Activities (Porter) | How do they do it? | Two task families, not one (`briefs/systems-maps-2026-07-27.md` Map 2): **production-line work** — ticket triage, patching, alert suppression, execution — low-variety, ~zero marginal cost, commoditizes, "ride it" (Offering D on-ramp); **job-shop work** — runbook design, EBR, tabletop, maturity coaching — high-variety per client, non-zero marginal cost (needs the craftsman), the actual moat, "own it" (Offering A / vCISO). The advisory flow itself (Map 1) runs Diagnose → Kit (assemble ~75% skeleton) → Fit-to-asset (~25% human) → Certify → Deliver, with a feedback loop back through the Value Ledger. `[CS: HIGH — internal transcript-grounded, strategic framing tagged [A]]` |
| POEMS | What is it? | **People:** see §1 cast list. **Objects:** per FSN-83143 §3, a complete Coworker config requires Identity, AI Experts, Scripts (Script Repository, risk-tiered), a Runbook, Guardrails, and a Trigger — these are the literal objects in the space. **Environment:** the production-line/job-shop split above *is* the environment split — same platform, two different working contexts. **Message:** "Value is the north star" (FSN-83143 §5) at the platform/admin level; business-value-not-technical-metrics framing at the client-facing level (see qbr-ebr.ux.md Must 1 for the offering-specific instance — worth checking whether this generalizes or is QBR-specific, per the `[SPEC DIVERGENCE]` already logged there on exactly this tension). **Systems/Services:** MCP gateway (inbound tool access), Runbook Engine, Value Ledger, Script Repository, Temporal (durable execution), plus the MSP's own N-central, Adlumin, and PSA (Halo/ConnectWise/Autotask) — named across this session's council-mini errata. `[CS: VERIFIED for the FSN-83143-sourced items; CS: HIGH for the architecture items, per acp-core-main-3/CLAUDE.md]` |
| Five Human Factors | Who is it for? | **Physical:** task-switching under pressure (already in §6's quality bar, Nielsen #6). **Social:** the accountability spine from the fishbone (`systems-maps-2026-07-27.md` Map 3) — owner-vs-technician confusion, no certification/sign-off, an unresolved legal/liability gap ("isolate device? call the FBI? — unknown"). `[R internal — Joe 11:12–17:41]`. **Emotional:** a recurring cross-offering finding, not offering-specific — this session's Council errata (Alert Flood, IR-RCA, Env Health, Tabletop) each independently hit the same SDT question: does the trust/autonomy architecture support competence or erode it, and none of the four is resolved. **Cultural:** `[?]` — no ACP-wide evidence yet; qbr-ebr.ux.md has a UK-specific cultural finding (British reserve) that hasn't been checked for generalization. **Cognitive:** "the curse of the expert" (a hired coach's third-party diagnosis, not first-person operator evidence) recurs at the QBR level — `[THIN]` there, untested at the ACP-wide level. |
| Value Webs (Porter) | How does it create value? | The platform's own 5-layer monetization stack, found this session and independently cited across four Council errata: **Platform Access** (subscription/base), **Workflow Execution**, **Expert Licensing** (where "trust-level becomes monetizable — MSPs pay recurring fees for each Expert, and trust level determines how much labor each Expert replaces"), **Vendor Ecosystem**, **MCP & Tool Transactions**. `[CS: VERIFIED — scout_input/01-control-plane.md, retrieved directly from Confluence]`. Layered over this: vCISO/vCIO as a **packaging** exchange, not a separate build — "vCIO ≈ A + Env Health + planning · vCISO ≈ C + Tabletop + Alert + identity. Survival = a PRICING decision, not a build." `[CS: HIGH — briefs/systems-maps-2026-07-27.md Map 4]`. What N-able gets from this exchange (attach, upsell, reduced churn) is `[A]` — no revenue/attach figure exists anywhere in the corpus checked so far (confirmed independently by the QBR Council testimony's Value Chain voice). |

*(See footnote [^2] for the source worksheet.)*

## 4. Sustaining or disruptive — what kind of innovation is this? — `Gate 2` · `[SKETCHING]`

> **TL;DR:** Is this offering better tooling for people who already do the thing (sustaining), or targeting the majority who do none (disruptive)? Classification is open and changes what you build.

- **Disruptive Innovation read: no longer purely pending — real testimony now exists for five of the offerings**, though the classification itself is still genuinely unresolved per-offering, not just un-researched:
  - QBR/EBR: fresh 5-voice Council pass, 2026-07-30 — `briefs/qbr-ebr-council-testimony-2026-07-30.md`. Package 3 (N-able Native) reads sustaining; Package 5 (Cross-Vendor) reads disruptive (targets non-consumption, the Cormier zero-QBR existence-proof) — the two voices (Disruptive Innovation, Value Chain) explicitly diverge on what Package 5 even *is* (market-timing bet vs. chokepoint-control precondition) — named, not resolved.
  - Alert Flood Suppressor, IR-RCA, Env Health Monitor, Security Tabletop: 7-voice council-mini testimony (2026-07-06) each has a Christensen Disruptive Innovation voice, and each just got a 2026-07-30 erratum (`council-mini-*-erratum-2026-07-30.md`) that **strengthens the sustaining read across the board** — N-able's own existing N-central automation (13 policy categories, an Incident Summary Report, autonomous-endpoint-management marketing) already occupies territory these agents propose to differentiate on. The internal-cannibalization risk each testimony flagged as a worry now has concrete documentary evidence behind it, not just an inference.
- Ten Types of Innovation (Doblin / Larry Keeley) — confirmed 2026-07-28. `[CS: VERIFIED]`
- Note: this is analytic classification, not a factual claim — a synthesis move to stress-test, not a data point to tag with `[CS:]`. Framework credits: Clayton Christensen (Disruptive Innovation), Larry Keeley/Doblin (Ten Types).

## 5. Riskiest assumptions — `Gate 1 / Gate 2` · `[RIGHT_THING]`

> **TL;DR:** Two cheap gates (Q1, Q2) unlock most of the fleet and neither has run. A Value Ledger renders $0 at launch. One named divergence (Env Health) is unreconciled. Pulled directly from the reconciled vision synthesis, not invented here.

*(Pull from the North Star's Vision risk register — don't invent a second one. These are the open questions named and tracked, not buried.)*

| Assumption | Status | Owner |
|---|---|---|
| **Q1 — data-egress/DPA.** Can N-able legally pull non-N-able vendor data into a client-facing artifact? ~40% likelihood it's viable as-is. Gates Offerings A (Cross-Vendor branch), C, E. Cheapest, highest-leverage open question in the whole portfolio — a legal read + one competitor ToS check, not a build. | 🔴 open, unowned | Beth (to commission) |
| **Q2 — does the operator want the (kitted) mechanism**, or just the destination? ~93% adoption assumed, never tested with real MSP operators — every demand signal in the corpus so far is buyer purchase-intent (the owner/Craig), not operator pull (the delivery lead/Vanessa or equivalent). Needs operator ethnography + one solution-fit session with real MSPs, not internal Head Nerds. | 🔴 open, unowned | Beth (to commission) |
| **Env Health Monitor divergence** — drag-rank puts QBR #1, but the n=119 quantitative survey puts Env Health Monitor highest on per-agent value (3.59). Not averaged away — named as a real finding requiring investigation before the fleet is locked. | 🔴 open | Beth |
| **Value Ledger renders $0 at launch** — built (per the 2026-07-14 count), but no wired producer. The entire "enterprise-value artifact" story is empty until one built runbook emits a real ledger entry. Flagged **FIX FIRST** in the source synthesis. | 🟡 resolving — a build-sequencing item, not a standoff (see Divergence Log precedent in qbr-ebr.ux.md DIV-003 for the same pattern at the QBR level) | Eng |
| **Day-1 sequencing unresolved** — the build ships Ticket Triage (ranked lower in partner research) as the day-1 coworker, while the vision leads with QBR (ranked #1). Sequencing decision, not yet made. | 🔴 open | Beth/Nicole |
| **Autonomy model backed into risk-tier defaults, not ratified against tested alternatives.** QBR, IR-RCA, and the normalization layer have no spec yet. | 🔴 open | Beth/Nicole |
| **Normalization ≥75% on real mixed-vendor data, and the 15-minute operator edit-and-send flow actually fits in 15 minutes** — both load-bearing for Offering A/Package 5, neither tested. | 🔴 open, unowned | — |

Each assumption: owner, date, status (🔴 open / 🟢 confirmed / 🔵 accepted-as-interpretation). Source: `briefs/vision-synthesis-2026-07-27.md` ("The gates & test plan," "Step 5 — vision-vs-build clash") and `briefs/systems-maps-2026-07-27.md` (Map 4, Map 5).[^3]

## 6. Problem → Goals → Tasks → Function · `[RIGHT_THING]` `[THING_RIGHT]` `[BRIDGE]`

> **TL;DR:** The acceptance-criteria spine. Steps 1-2 are design's live judgment. Steps 3-4 (Tasks + Function) are where eng builds against. Quality bar applies to *how well* a task executes — not which tasks are right, that's Top Tasks' job.

*(The real question this section answers: does the functional structure of what we're building actually resolve the user's problem — traced all the way down to tasks? **This section carries two gates at once — the split below is the point.**)*

**Steps 1-2 — `Gate 1 / Gate 2` (design's live judgment; eng: context, not spec):**

1. **Wicked problem** — from §1. `[PENDING — Beth's call]`. Candidate framing, not a decision: the Map 3 fishbone (`systems-maps-2026-07-27.md`) names five root causes clustering into two spines — **capability** (runbooks that are generic, untested, built with no time) and **accountability** (no certification/sign-off, owner-vs-technician confusion, an unresolved legal/liability gap). Offered as raw material for the wicked-problem statement, not as the statement itself — that call is yours to make.
2. **Sub-problems / goals** — what the wicked problem breaks down into. `[PENDING — Beth's call]`. Candidate material: the vision synthesis's own "dominant strategy" (answer Q1/Q2 first; lead with A; frame A as vCIO/vCISO packaging; reprice B as the seat under A/C; buy/partner past the data-egress wall) reads as a candidate goal-decomposition, not a confirmed one.

**Steps 3-4 — `Gate 3` (eng mostly lives here; treat as stable, build against it):**

3. **Tasks** — how each goal actually gets accomplished. Defined via **Top Tasks**
   (Gerry McGovern) — the small number of tasks users actually care about, not an exhaustive
   feature list. FSN-83143's three primary user journeys are the closest existing candidate for
   this layer at the Coworker-creation level: **(a) Admin creating a new Coworker from scratch**
   (open builder → assemble Identity/Experts/Scripts/Runbook/Guardrails/Trigger → review Draft →
   explicitly activate); **(b) Admin cloning a platform default** (open Coworker Library → clone →
   modify → activate); **(c) AI-assisted creation** (N-zo/Claude Code session → AI proposes a
   changeset → admin reviews and activates). `[CS: VERIFIED — FSN-83143 §3, "Primary user journey"]`
   These are creation-layer tasks only — they do not cover what a specific Coworker's runbook does
   once running (that's each offering's own mini-doc's job, e.g. qbr-ebr.ux.md §6).
4. **Function/feature structure** — what we're building, mapped 1:1 to the tasks above. FSN-83143
   §6 already enumerates this at the config/lifecycle layer: REQ-001 through REQ-024 (assemble,
   clone, Draft→Active→Paused→Archived lifecycle, three trigger types, guardrail/risk-tier
   enforcement, Value Ledger writes, execution-history views, autonomy promotion, AI-operator
   drafting via MCP). `[CS: VERIFIED — FSN-83143 §6]` A function with no task it serves is scope
   creep; a task with no function serving it is a gap — on a first pass, REQ-001–024 map cleanly
   onto tasks (a)/(b)/(c) above; no orphaned function or unserved task found yet at this layer,
   but this hasn't been checked function-by-function in a dedicated pass.

**Quality bar — `Gate 3`, applied at the task/interaction level, not the decomposition level.**

**Default floor — applies in the absence of product-specific usability research:**

These standards apply to any ACP offering until overridden by findings from a product-specific usability study. Mini-docs add product-specific rationale in their own §6.

| Standard | Why it applies to ACP |
|---|---|
| Nielsen #6 — Recognition over recall | ACP users are often task-switching under pressure. Don't make them remember what a state means. `[CS: HIGH]` |
| Nielsen #1 — Visibility of system status | Agent runs are async and durable (Temporal). Status must be unambiguous at every point in the run lifecycle. `[CS: HIGH]` |
| Nielsen #5 — Error prevention | AI-generated content must make errors hard to ship, not easy to approve. `[CS: HIGH]` |
| Nielsen #4 — Consistency | Confirm-gates, defensibility tiers, and approval signals must render the same way everywhere. `[CS: HIGH]` |
| N-able Tenets & Traps (Medlock & Herbst, Microsoft) | 9 Tenets / 26 Traps — shared vocabulary for why something's broken, usable by UX/eng/product/business together. `[CS: HIGH]`[^4] |
| N-able Apex design system | Apply current Apex rules. Check with Apex reference skill for current state. `[?]` — not pulled here yet. |

**Placeholder — to be filled by usability research per offering:**

No product-specific usability study exists for most ACP features yet. If working on this without a researcher:

1. **Cognitive walkthrough** — walk through each task in §6 as the primary persona. At each step: can they tell what to do? Can they tell if they did it right? Flag every friction point. ~2h solo, ~1h facilitated.
2. **5-second test on any confirm-gate or approval UI** — show the screen to 3 people. Ask: what does this mean? What would you do next? If they can't tell, the gate is a passive warning, not a block.
3. **Content audit on AI-generated output** — run the built-in test from the offering's mini-doc §6. Count business-outcome language vs. technical-metric language. If the ratio is off, the prompt isn't working.

**Usability ship gate (Beth, 2026-07-30):** ≥6 SUS to ship at all; ≥8 SUS on the top five key tasks. Applies to any ACP offering unless a mini-doc names a different bar for a specific surface.

**Trust-in-AI-output eval (Beth, 2026-08-04) — `[A]`, custom instrument, unvalidated:** applies alongside SUS to any AI Coworker/Expert output across the portfolio, not just a specific offering. Built from the construct themes in Jian, Bisantz & Drury's 2000 Trust in Automation scale (dependability, reliability, confidence, integrity/no-deception, familiarity) — not that scale's actual item text, which is gated pending author permission even in the field's own HRI scale database. `[CS: LOW — construct themes only; do not attribute exact wording to Jian et al.]`

5-point Likert (strongly disagree → strongly agree), no reverse-scoring:

1. I understand why this output turned out the way it did.
2. This output would hold up if I checked it myself.
3. I trust this enough to act on it without independently re-verifying it.
4. This tool has not misrepresented what it actually did or found.
5. I feel confident, not wary, using this.
6. I'm familiar enough with how this works to know where its limits are.

Score = mean of the 6. No ship-gate threshold yet — first administrations establish a baseline before any number becomes a bar. This is the evaluation mechanism `shift-left-playbook.md` rule 10 says doesn't exist yet: a DIV row *surfacing* is not the same as anyone's trust in the output actually moving. Administer per-offering, same cadence as the placeholder usability methods above, until a mini-doc names a different one.

Mini-docs (child context files per offering) expand this section with product-specific findings. This default floor holds until they do.

**Ruled out:** a separate "IIT principles" canon — checked, no discrete numbered-principles list exists distinct from Whitney's methodology, which lives in §3. `[CS: LOW — no canon found]`

**Future merge point:** joins Beth Nam's heuristics/usability work here once located (owner + location `[?]` — not yet known).

Each task, once defined, becomes a literal testable acceptance-criterion statement Will and eng can both check a build against — that's what makes this section double as UX acceptance criteria rather than narrative.

## 7. Open decisions (the dirty data) — `Gate 1 / Gate 2` · `[RIGHT_THING]`

> **TL;DR:** Named, not resolved. Routed through Beth first. An open decision stays visibly open here — it does not get quietly resolved by a later section restating it as settled.

- Positioning fork — delivery-lead (user) vs owner (buyer): which does the offering speak to?
- MVP spine — Env Health assembly vs severing the service-desk dependency. See §5's Env Health
  divergence entry — the n=119 per-agent-value finding sharpens why this fork matters, without
  resolving it.
- Confidence scope — differentiator vs enablement problem vs research-first.
- Every `[0% Claude — fill this in]` bet sentence from the vision synthesis — confirmed by direct
  grep: **102 occurrences across 27 files, all still empty** (per Bradley's 2026-07-30 gather).
  Nobody has written a synthesis sentence for anything in this corpus yet.
- **Spec Divergence Log** — per AGENT GATE rule 10, offering-specific divergences from canonical
  specs live in each offering's own mini-doc. QBR/EBR's is live: `qbr-ebr.ux.md` §5a, four entries
  (branch-fork ambiguity vs. FSN-83143 DEC-006; persona-mapping gap vs. FSN-83143 §3; Value Ledger
  wiring, tracked 🟡; a platform-wide UX-principle collision with an offering-specific Must). No
  ACP-wide (this-file-level) divergence against FSN-83143 has been identified yet — the four
  divergences found so far are all QBR/EBR-specific. Worth re-checking once mini-docs exist for
  the other four offerings (see §10).
- **44-method Council pass — queued, not run.** See `CHORES.md` — a fuller stress-test (the
  44-method/14-cluster matrix, `briefs/methods-library-matrix.md`) than the 5-voice default is
  planned as Friday-chores work, building on today's four Council errata rather than re-gathering.
- Rule: an open decision stays visibly open here. It does not get quietly resolved by a later
  section restating it as settled.

## 8. Confidence score — `cross-cutting`

> **TL;DR:** If [A]+[?] > 30%, this file isn't ready to hand to eng as acceptance criteria. Computed by grep — don't self-report it. Not yet computed this pass — do this once content settles, not mid-edit.

*(Computed, not asserted. The >30% [A]/[?] rule as a literal rollup. In practice this tracks how settled Gates 1–2 currently are — §6 steps 3-4 and the quality bar are expected to hold a high [R]/[D] ratio even while §1/§5/§7 are still open.)*

- `% of claims tagged [R]/[D]` vs `% tagged [A]/[?]`, counted by grep across this file — same
  discipline as the 47% rule (verify the ratio, don't self-report it).
- If `[A]`+`[?]` > 30%: this file is not ready to hand to eng as acceptance criteria. Say so here,
  don't bury it.
- `[NOT YET SCORED — content just landed 2026-07-30; run the grep pass on the next reconcile, not
  in the same edit that added the content]`

## 9. Sources
*(Link index. If it's not linked, it's not a source — same rule as the datadump.)*

**Canonical specs:**
- `acp-core-main-3/Intent Specs/FSN-83143_AI_Coworkers_in_ACP.md` — canonical build spec for AI Coworker configuration/lifecycle. `canonical_source: true`.
- `acp-core-main-3/Intent Specs/ACP-Management-Plane-AI-Operator-Model.md` — AI-operator permissions, proposed-changes flow.
- `briefs/acp-problem-statement-2026-07-28.md` — the three ACP-level problem-statement candidates.

**Vision / concepting corpus:**
- `briefs/vision-synthesis-2026-07-27.md` — reconciled offerings, gates & test plan, vision-vs-build clash.
- `briefs/systems-maps-2026-07-27.md` — the five systems maps (§2, §3, §6 of this file).
- `briefs/tier0-sketches-reconciled-2026-07-27.md`
- `briefs/persona-scorecard-acp-concepts-2026-07-24.md` — persona-weighted scoring, confirms Q1/Q2 as the two portfolio gates independently of Idea Chess.
- `briefs/acp-offerings-2026-07-14.md`, `briefs/acp-word-sketches-2026-07-14.md`, `briefs/acp-word-sketches-four-complete-2026-07-15.md`, `briefs/acp-vision-synthesis-2026-07-14.md`, `briefs/acp-why-nable-build-map-2026-07-14.md`

**Idea Chess (value-prop/positioning stress-tests):**
- `briefs/idea-chess-fleet-synthesis-2026-07-14.md`, `briefs/idea-chess-five-to-build-2026-07-15.md`, `briefs/idea-chess-build.md`
- `briefs/idea-chess-offering-a.md` through `-e.md` (+ `.assumptions.json` companions)
- `briefs/acp-idea-chess-play-to-win-2026-07-20.md`, `briefs/acp-vendor-deep-dives-and-idea-chess-2026-07-20.md`, `briefs/concept-sketches-qbr-2026-07-20.md`, `briefs/acp-concept-brief-2026-07-20.md`

**Council testimony (experience/framework stress-tests):**
- `briefs/qbr-ebr-council-testimony-2026-07-30.md` — QBR/EBR, 5-voice, fresh.
- `briefs/council-mini-alert-flood.md` (2026-07-06) + `briefs/council-mini-alert-flood-erratum-2026-07-30.md`
- `briefs/council-mini-ir-rca.md` (2026-07-06) + `briefs/council-mini-ir-rca-erratum-2026-07-30.md`
- `briefs/council-mini-env-health.md` (2026-07-06) + `briefs/council-mini-env-health-erratum-2026-07-30.md`
- `briefs/council-mini-tabletop.md` (2026-07-06) + `briefs/council-mini-tabletop-erratum-2026-07-30.md`
- `briefs/council-testimony-department-reframe.md` — the erratum-layer precedent these four followed.
- `briefs/acp-trust-level-council-44.md` — worked example of the 44-method format, queued to run properly per §7.

**Persona / interview sources:**
- `scout_input/lewis-persona-library-cast-2026-07.md` — 26-persona library, ACP cast pull.
- `scout_input/joe-lewis-julian-interview-2026-07.md` — SME interview, threat landscape/insurance/MSP liability.
- `scout_input/adlumin-proto-personas-pptx-2026-07.md` — filed as pointer only; image-locked, not text-extractable.

**Architecture / platform docs (this session's finds):**
- `scout_input/01-control-plane.md`, `scout_input/02-ai-coworker.md`/`02-coworker.md` — trust-level calculation, Value Ledger, 5-layer monetization stack, script/risk model.
- `scout_input/03-runbook.md`/`03-runbooks.md` — Runbook Engine, composability, escalation/handoff.

- Confluence (this file, registered): [ux.md — ACP synthesis spine (2026-07-28)](https://n-able.atlassian.net/wiki/spaces/AI/pages/62227775577) — Synthesis-briefs shelf

## 10. Mini-docs
*(Sub-project context files. This file stays the spine; mini-docs hang off it. Each mini-doc is required reading before any agent specs or builds the offering it covers.)*

- [`briefs/context/qbr-ebr.ux.md`](briefs/context/qbr-ebr.ux.md) — QBR/EBR offering · status: DRAFT · 2026-07-28

**Confirmed 2026-07-30 (Beth's call): the other four default Coworkers need their own mini-docs
eventually.** Alert Flood Suppressor, Incident Response Analyst, Environment Health Monitor, and
Security Tabletop currently have Council testimony (7-voice, 2026-07-06 + today's erratum deltas)
but no full mini `ux.md` the way QBR/EBR has one — no persona cast list, no four-angle view, no
Top-Tasks/acceptance-criteria spine at the offering level. This is a named, deferred gap, not a
silent one: build these when there's a real reason to (a spec/build request on one of them), not
speculatively ahead of need.

---

### Footnotes

[^1]: Vanessa Chart, Technica Solutions. Identity verified 2026-07-28 — see
  `scout_input/stefanie-hammond-ebr-sources-2026-07-28.md`.
[^2]: `Four Lenses -- Clean Master.pdf` (Beth's own file — Whitney/IIT Institute of Design
  context-brief canvas). Whitney's published writing on context briefs not yet pulled in as a
  separate cited source.
[^3]: `briefs/vision-synthesis-2026-07-27.md` — supersedes the original North Star Confluence
  citation (page 62176526400) as the pull source for this section; the vision synthesis itself
  reconciles against that North Star rather than duplicating it.
[^4]: Medlock & Herbst, Microsoft. [uitraps.com](https://uitraps.com/about/) ·
  [MeasuringU overview](https://measuringu.com/frameworks-for-classifying-ui-problems/)

---

*Built from the Vault Q1 Shareout precedent (Beth's own past work, Capital One/Adaptive Path,
2018) — same Research/Design-track split, same Orienting-Tools naming, same closing-links-page
pattern. Not invented from scratch.*
