# Lewis Persona Explorer — 26-persona library, filed + ACP cast pull

**Filed:** 2026-07-30
**Source file:** `Persona_Explorer (1).html` (Downloads, from Beth; the "Personas Work" Lewis distributed per the [SME interview](joe-lewis-julian-interview-2026-07.md) follow-up tasks)
**Datadump shelf:** User evidence (personas) — root of the artifact gradient per [datadump-spec-model.md](../datadump-spec-model.md#2-the-artifact-gradient-locked)
**Confidence:** [CS: MEDIUM] — well-constructed persona set (org context, JTBD, day-in-the-life, design implications) but source methodology (interviews? desk research? Lewis's own domain synthesis?) is not stated in the file. Ask Lewis before treating as `[R]` research-grade.

---

## Full library — 26 personas, org-tagged

Grouped by the file's own `ROLEMAP` taxonomy (Service delivery & IT ops / Security operations / Advisory & security leadership / Commercial, account & ownership / Governance, compliance & assurance / Third-party stakeholder):

**Service delivery & IT operations**
`t1soc`-adjacent service roles not separately id'd here; explicitly present: `deskt` (Service desk technician T1-2), `dispatch` (Dispatcher/service coordinator), `sdm` (Service delivery manager), `autoeng` (Centralized-services/automation engineer), `tenadmin` (Platform/tenant administrator), `projeng` (Professional services/project engineer), `knowqa` (Knowledge/QA/training manager), `outl1` (Outsourced service desk technician L1), `outlead` (Outsourced service desk pod lead)

**Security operations**
`t1soc` (Tier 1 SOC analyst — triager), `t3soc` (Senior SOC analyst & threat hunter, T2–3, IR lead), `deteng` (Detection/content engineer), `socmgr` (SOC manager/lead)

**Advisory & security leadership**
`vciso` (vCISO/fractional CISO)

**Commercial, account & ownership**
`am` (Account manager/vCIO), `owner` (Owner-operator, and the PE-backed contrast)

**Governance, compliance & assurance**
`extaud` (External auditor/assessor), `intaud` (Internal auditor/GRC analyst), `provsec` (Provider security & compliance officer)

**Third-party stakeholder**
`insurer` (Cyber-insurance underwriter/broker), `dfir` (External DFIR/IR retainer firm), `disttsd` (Distributor/TSD), `endcust` (End-customer sponsor), `mktg` (Marketing lead), `finadmin` (Finance/billing/ops admin), `procure` (Vendor/procurement/licensing manager)

*(26 total — the ROLEMAP table in-file also lists several roles without a full persona card: escalation engineer T2, senior/infra engineer T3, bench/provisioning tech, onboarding/implementation engineer, NOC analyst, field/onsite tech, project manager/PMO, SIEM/SOAR engineer, threat intel analyst, vuln management analyst, security/advisory consultant, GRC consultant, security architect, MSP CTO/Director of Security, sales rep, sales engineer, partner/partial owner, PE-backed CEO/CFO — these are named but not detailed as full cards in the JS data array.)*

---

## Cast of characters we already use — matched against ACP's known users

Per Beth's instruction ("use the lewis persona list to pull likely cast of characters we know"), matching against [FSN-83143](../../acp-core-main-3/Intent%20Specs/FSN-83143_AI_Coworkers_in_ACP.md) USER-001 through USER-005 and prior ACP briefs:

| ACP user | Nearest Lewis persona(s) | Fit |
|---|---|---|
| USER-001 MSP Admin (primary Coworker creator) | `tenadmin` (Platform/tenant administrator) — closest structural match: "every other internal persona inherits their decisions" | [CS: MEDIUM] — Nicole's spec doesn't name a Lewis-equivalent explicitly; `tenadmin` is the best fit on responsibilities (RBAC, config cascade, integrations) |
| USER-002 MSP Technician (approver/runner) | `deskt` (Service desk technician T1-2) or `t1soc` depending on Coworker type | Matches for QBR/Alert-Flood/EnvHealth Coworkers; `t1soc` fits Alert Flood Suppressor and Incident Response Analyst specifically |
| USER-003 AI Operator (Claude Code/N-zo) | *(no Lewis equivalent — AI system, not a human role)* | N/A |
| USER-004 N-able Platform (internal) | *(no Lewis equivalent — internal system)* | N/A |
| USER-005 Audit/Compliance Reviewer | `intaud` (Internal auditor/GRC analyst) or `extaud` (External auditor) depending on scope | [CS: MEDIUM] — `intaud` fits continuous/embedded review; `extaud` fits the read-only, out-of-band audit case explicitly named in FSN-83143 |

## The "MSP expert person" Beth asked to find

Beth's note: *"who -- we need an MSP more expert person (should be in docs somewhere... look)."*

Not found as a named role in FSN-83143 or the Management-Plane-AI-Operator doc — those specs stop at USER-001 (Admin) as the most senior internal MSP role. The Lewis library has four candidates that are genuinely more expert/senior than USER-001:

1. **`t3soc`** — Senior SOC analyst & threat hunter (T2–3, IR lead). "The investigator... refines detections, writes automation, mentors... their job is increasingly to encode judgement into artefacts the tiers below can act on." [CS: HIGH fit] if the "expert" gap is about the Coworker-authoring persona (who writes the SOP a Coworker encodes).
2. **`deteng`** — Detection/content engineer. Detection-as-code discipline; closest existing role to "the human who trains/tunes an AI Coworker's judgment."
3. **`autoeng`** — Centralized-services/automation engineer. "Builds and maintains RMM scripts... the function that lets one tech support thousands of endpoints" — closest existing role to what a Coworker *replaces or extends*, per FSN-83143's "take labor and turn it into software" value prop.
4. **`vciso`** — vCISO/fractional CISO. Most senior *strategic* persona; fits Coworkers like QBR Advisor and Security Tabletop where the output needs to be board-ready.

**Recommendation:** if "MSP expert person" means *who authors/validates a Coworker's judgment before it ships*, `t3soc` or `deteng` is the closer fit than USER-001. If it means *who a Coworker's labor-reduction claim is measured against*, `autoeng` is the fit. **This is a naming/scope call for Beth, not one this filing resolves** — flagging per the epistemic division of labor (Beth abducts which fit is right; this is Claude's deductive pattern-match across the two docs).

---

## Gaps named, not filled

- Lewis's methodology/sourcing for these 26 personas is not stated in-file — [WOBBLY] until confirmed.
- No persona in this library is explicitly labeled "MSP expert" — the match above is inference, not a citation.
- The pptx proto-personas (5 image-only slides, see [adlumin-proto-personas-pptx-2026-07.md](adlumin-proto-personas-pptx-2026-07.md)) may overlap with or duplicate personas in this library — cannot check until the pptx content is text-recoverable.
