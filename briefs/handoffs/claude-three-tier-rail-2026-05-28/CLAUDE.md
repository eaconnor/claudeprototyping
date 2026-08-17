# CLAUDE.md — Three-Tier Rail Pattern Handoff

**For:** Any Claude session picking up Band Protocol prototyping work  
**From:** 2026-05-28 session that built and validated the three-tier rail pattern  
**Context:** Multi-gate prototype pattern now documented in skill

---

## 1. What this packet contains

- **HANDOFF.md** — Full handoff: what shipped, what was validated, three calls for next session
- **CLAUDE.md** — This file, orientation
- Test prototype at `/Users/elizabeth/Desktop/Bethproto/prototypes/alpha-race-three-tier-test.html`
- Skill update at `.claude/skills/prototype/SKILL.md` lines ~130-227
- Tracking doc at `briefs/skill-updates-needed.md`

---

## 2. What the three-tier rail pattern is

**Pattern:** Single prototype with T1/T2/T3 toggle that switches rail content for three different audiences across three gates.

- **T1 (Gate 1 - Concept)** → Bradley scoring rail: risk score, 44-voice council, what you nailed/hurt, reasoning
- **T2 (Gate 2 - Direction)** → PM Action Dashboard: decision cards, hotspot + leader-line pattern
- **T3 (Gate 3 - Spec-ready)** → Engineering + Design QA: handoff specs, design checklist, UAC

**When to use:** Multi-gate prototypes serving PM + leadership + cross-functional + engineering + design audiences.

**Reference:** `prototypes/alpha-race-three-tier-test.html` (Alpha RACE customer demo test case)

---

## 3. Key decisions validated by Beth

1. **Three DISTINCT rail structures** — T2 doesn't show T1 content (non-cumulative)
2. **44 voices always** — from methods-library-matrix.md, not 11
3. **Full 6-field owensing** — no "[abbreviated for test]" placeholders
4. **Expand/collapse drill-down** — council voice cards: collapsed → click → expanded full-width → close
5. **Council modal depth** — matches idea-chorus v3 quality

---

## 4. Build discipline established

**Before building with this pattern:**
1. Read `.claude/skills/prototype/SKILL.md` lines ~130-227 first
2. Don't copy from idea-chorus v3 without checking skill — that prototype had outdated patterns (11 voices instead of 44)
3. No abbreviations — use real, full content
4. Grep-verify stats before quoting (47% rule)

**The skill is the source of truth, not other prototypes.**

---

## 5. If you're building a new multi-gate prototype

**Steps:**
1. Read skill section "Three-Tier Rail Pattern" (lines ~130-227)
2. Copy structure from `alpha-race-three-tier-test.html`
3. Adapt T1/T2/T3 content to your project's gates
4. Generate 44 voices from methods-library-matrix.md contextualized to your domain
5. Use full 6-field owensing (Sign, Hypothesis, Kill criterion, Force level, Evidence, Cannot see)
6. Test: T1/T2/T3 toggle switches rail, council modal opens, voices expand/collapse

**Don't:**
- Use abbreviated content ("[Sign placeholder]")
- Say "11 voices" — it's 44
- Skip reading the skill first
- Copy patterns from idea-chorus v3 without validating against skill

---

## 6. If you're extending the skill

**Read first:**
- `briefs/skill-updates-needed.md` — tracking doc from this session
- `.claude/skills/prototype/SKILL.md` — current skill state

**Open questions noted:**
- Proctor checks for three-tier rail (should proctor verify structure?)
- Council modal extraction (inline or shared component?)
- Voice content generation (how much human input required?)

---

## 7. Files you'll need

| Path | What it is |
|------|-----------|
| `.claude/skills/prototype/SKILL.md` | Prototyping skill (updated with three-tier pattern) |
| `prototypes/alpha-race-three-tier-test.html` | Test prototype (Alpha RACE) |
| `briefs/methods-library-matrix.md` | 44 voices, 14 clusters |
| `briefs/skill-updates-needed.md` | Tracking doc |
| `briefs/handoffs/claude-three-tier-rail-2026-05-28/` | This handoff packet |

---

## 8. What NOT to do

- ❌ Copy from idea-chorus v3 without checking skill
- ❌ Use "11 voices" (it's 44)
- ❌ Abbreviate council voice content
- ❌ Skip the expand/collapse drill-down in council modal
- ❌ Make T2 cumulative (showing T1 content) — each tier is distinct
- ❌ Use alert() stubs — build real modals or leave non-functional

---

## 9. Success criteria

If you're using this pattern correctly:
- ✓ T1/T2/T3 toggle switches rail content
- ✓ Council modal says "44 voices"
- ✓ Voice cards expand to show full 6-field owensing
- ✓ Content is substantial, not "[placeholder]"
- ✓ Each tier serves a different audience with a different question

---

**This pattern is production-ready.** Validated 2026-05-28 with Alpha RACE test case.
