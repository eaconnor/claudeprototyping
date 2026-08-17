# Band Protocol — Existing Checks and Gaps

Sources read: SKILL.md, HANDOFF.md (beth-band-prototyping-2026-05-28), CLAUDE.md

---

## What the pipeline currently enforces

**1. [CS:] confidence tagging on all factual claims** [CS: VERIFIED — CLAUDE.md section 4]
- Seven levels: VERIFIED / HIGH / MEDIUM / LOW / FABRICATION RISK / UNKNOWN / LOW—outside training window
- Applied inline at claim level by every agent
- Governing principle: "Fluency is not accuracy"

**2. [A]+[?] ratio check in spec** [CS: VERIFIED — SKILL.md]
- Three-number reporting (not one inflated figure):
  - World-claims ratio — claims about the world (MSPs, market, users) — the lead number
  - Test-plan readiness — claims about the prototype's own test plan
  - Inflated ratio — includes meta-TODOs from brief's gap inventory
- Threshold: if >30% at 90% fidelity, flag before proceeding
- Must save `math-recount.md` showing every tagged line categorized into three buckets

**3. The 47% rule** [CS: VERIFIED — SKILL.md, HANDOFF.md]
- Every ratio, count, or stat in a handoff must be grep-verified before shipping
- Origin: spec once self-reported 47%; grep showed 80%
- Currently enforced at handoff stage by Bradley

**4. Cooperation principle: synthesis slot stays blank** [CS: VERIFIED — SKILL.md, HANDOFF.md]
- `[0% Claude — fill this in]` in council summary synthesis slot
- Council tensions named and routed, never resolved by the tool
- Routing cards carry to humans (Product · Design · Research · Eng)

**5. Critic pre-build and post-build scorecards** [CS: VERIFIED — SKILL.md]
- 6 dimensions: Coherence, Source-fidelity, Demo-ability, Differentiation, Risk, Scope discipline
- 1–5 scale; delta table post vs. pre
- This is a prototype-level check — not a pipeline-level meta-check

**6. Fidelity banner on every prototype** [CS: VERIFIED — SKILL.md]
- Tier flag + checks + pip indicator visible in every built prototype

**7. Seed data rules** [CS: VERIFIED — CLAUDE.md section 9b]
- All names, companies, customer data must be fictional
- Pete Hegseth test: if you wouldn't be comfortable with it public, it doesn't go in

**8. Council cross-talk requirement** [CS: VERIFIED — SKILL.md, HANDOFF.md]
- 3 mandatory moves: Direct response · Blind-spot supply · Productive tension
- New claims only — no restatement

**9. Spiral detection (Bradley's 5 alerts)** [CS: VERIFIED — CLAUDE.md section 7]
- Therapy/Advice, Outsourced Judgment, Rubber Turkey, Complexity Collapse, Privacy Risk

---

## What the pipeline does NOT currently enforce (gaps)

These are enforced by convention, not verification:

- No check that [CS:] tags were actually applied by prior agents before output is accepted [CS: UNKNOWN]
- No check that the synthesis slot remains blank in council outputs after delivery [CS: UNKNOWN]
- No grep-verification step inside the pipeline for stats produced mid-run — 47% rule is currently handoff-only [CS: VERIFIED — from SKILL.md language]
- No check that routing cards were populated vs. left as templates [CS: UNKNOWN]
- No check that "what will hurt you" block in Bradley rail is substantive vs. formulaic [CS: UNKNOWN]
- No check that council voices were actually owensed (6-field format) vs. paraphrased [CS: UNKNOWN]
- No check that `math-recount.md` was actually produced vs. skipped [CS: UNKNOWN]
- No check that fidelity tier declared in spec matches fidelity tier built in HTML [CS: UNKNOWN]
- No check that seed data was used in prototype (fictional names) vs. real data accidentally included [CS: UNKNOWN]
- No check that all 44 council voices are present (abbreviated or full) vs. silently dropped [CS: UNKNOWN]

---

## Strongest design considerations (raw — not synthesis)

From the Anthropic verification subagent pattern:
- The critical failure mode is "premature pass" — declaring success after minimal checking. Mitigation requires explicit "you MUST run the complete suite" language.

From Constitutional AI:
- The Band Protocol already has a de facto constitution. The proctor's checklist could be derived directly from it.

From CI/CD quality gates (Danger.js shape):
- Four output types: message / warn / fail / markdown. A proctor could mirror this: info / warn / block / report.
- Gate passes only when all required checks pass — not majority.
- "Stop saying you forgot to": proctor encodes rote enforcement so agents focus on substance.

From Turnitin gaps:
- Presence-check (do [CS:] tags exist?) is not quality-check (are tags accurate?). Proctor can verify the former; the latter requires human review.

From Band Protocol gap list:
- Most actionable proctor checks are the ones in the gap list above — currently enforced by convention but not verified mechanically.
