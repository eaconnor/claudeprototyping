HANDOFF — Next Claude (three-tier rail pattern) — 2026-05-28

## Who I am
The session that built and validated the three-tier rail pattern for Band Protocol prototypes. Used Alpha RACE customer demo as test case. Pattern now documented in skill, ready for production use.

## What you're picking up
- `.claude/skills/prototype/SKILL.md` — updated with three-tier rail pattern (lines ~130-227)
- `prototypes/alpha-race-three-tier-test.html` — validated test prototype (4,800+ lines)
- `briefs/skill-updates-needed.md` — tracking doc for what was added to skill
- `briefs/handoffs/claude-three-tier-rail-2026-05-28/` — this handoff packet

## What the three-tier rail pattern is
Single prototype with T1/T2/T3 toggle serving three audiences across three gates:
- **T1 (Gate 1 - Concept)** → Bradley scoring rail: risk score block (pinned when rail collapses), 44-voice council modal with expand/collapse drill-down, what you nailed/hurt, reasoning (Oregon Trail | Monte Carlo | Charter tabs)
- **T2 (Gate 2 - Direction)** → PM Action Dashboard: decision cards with hotspot + leader-line pattern, footer with source tickets
- **T3 (Gate 3 - Spec-ready)** → Engineering + Design QA: engineering handoff (schema, API, components), design QA checklist (usability, a11y, content, visual, responsive, errors), user acceptance criteria

Each tier is DISTINCT (non-cumulative). T2 doesn't show T1 content. Tier toggle in topbar switches rail structure for different audience.

## Your task
Pick up any Band Protocol prototyping work. Pattern is production-ready. If building a multi-gate prototype, use this. If extending the skill, read tracking doc first.

## Files to read first
1. `briefs/handoffs/claude-three-tier-rail-2026-05-28/CLAUDE.md` — orientation
2. `briefs/handoffs/claude-three-tier-rail-2026-05-28/HANDOFF.md` — full handoff
3. `.claude/skills/prototype/SKILL.md` lines ~130-227 — canonical pattern documentation
4. Open `prototypes/alpha-race-three-tier-test.html` in browser — see it working

## What's already been decided (don't re-open)
- Three DISTINCT rail structures, not cumulative
- 44 voices always (from methods-library-matrix.md), not 11
- Full 6-field owensing in council voice cards (Sign, Hypothesis, Kill criterion, Force level, Evidence, Cannot see)
- Expand/collapse drill-down: voice cards start collapsed, click expands to full-width, only one expanded at a time
- No abbreviations — use real, substantial content, not "[placeholder for test]"
- Council modal depth matches idea-chorus v3 quality
- Read skill first before copying patterns from other prototypes
- Grep-verify all stats before quoting (47% rule)

## What's still open (your calls)
- **Proctor checks:** Should proctor verify three-tier rail structure when prototype declares multi-gate? (Noted in tracking doc, not yet added to proctor agent)
- **Component extraction:** Should council modal be extracted to `prototypes/_components/` or stay inline? (Current: inline until 3+ prototypes use it)
- **Voice content generation:** How much human input required for 44 voices? (Current: generate per prototype, contextualized to domain)

## The non-negotiables
- The prototyper holds the clipboard. This tool works for Beth, not the vendor.
- [CS:] tags on every factual claim.
- The 47% rule: grep-verify every stat before quoting it.
- Council synthesis slot stays blank: [0% Claude — fill this in]
- Front page test: if it wouldn't be comfortable public, it doesn't go in seed data.
- 44 voices from methods-library-matrix.md, grouped into 14 clusters, always.
- Full owensing depth in council voice cards — no abbreviations.
- Read `.claude/skills/prototype/SKILL.md` before building — skill is source of truth, not other prototypes.
