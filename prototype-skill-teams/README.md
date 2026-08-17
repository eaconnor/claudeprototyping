# Band Protocol Prototyping Pipeline Skill

**Created for:** Nicole Reineke (and the Band Protocol team)
**Purpose:** Execute the full prototyping pipeline (scout → spec → critic → build → critic → council → handoff)
**Version:** 1.0
**Date:** 2026-05-28

---

## What This Is

This skill packages the complete Band Protocol prototyping workflow into a single invocable command. When you ask Claude to prototype, mock up, demo, or build any UI/screen, this skill automatically runs all 7 pipeline steps and produces a complete handoff packet.

**Key features:**
- ✅ Full pipeline execution (no steps drop, even if you say "just build it")
- ✅ Apex Bridge delivery for ACP prototypes (overlay/modal pattern)
- ✅ Ownership attribution (X% Nicole) on all components
- ✅ Council testimony with 5 expert frameworks
- ✅ Bradley rail with routed cards (Product, Design, Research, Eng)
- ✅ Three-gate brief validation with fidelity tiers
- ✅ Claude-droppable handoff packets

---

## Files in This Package

```
prototype/
├── SKILL.md                        ← Main skill instructions (7-step pipeline)
├── README.md                       ← This file
├── test-cases-nicole.json          ← 3 ready-to-run ACP test cases
└── references/
    ├── ownership-attribution.md    ← How to calculate and display X% attribution
    └── attribution-matrix.md       ← Real scenarios with calculated percentages
```

---

## How to Use

### Install the skill

1. If you received this as a `.skill` file, install it with:
   ```bash
   claude skill add prototype.skill
   ```

2. If you're working from this directory, Claude Code will auto-detect it (no installation needed).

### Run your first prototype

Just ask Claude naturally:

> "Prototype the ACP Trust-Level Model UI showing MSPs how their confidence score is calculated. Pull from Confluence space AI (Control Plane + Coworker docs). Apex Bridge overlay, Tier 2 fidelity."

The skill will automatically:
1. Pull source docs from Confluence
2. Write a three-gate brief with evidence tagging
3. Run pre-build critic scorecard
4. Build working HTML with Apex Bridge, fidelity banner, Bradley rail
5. Run post-build critic with delta table
6. Run council (5 frameworks, contradictions preserved)
7. Generate handoff packet with attribution matrix

### Validate with test cases

Three test cases are included in `test-cases-nicole.json`:

1. **Trust-Level Model (Tier 2)** — Tests council contradictions on transparency
2. **Value Ledger (Tier 1)** — Exploratory concept with high [A] ratio
3. **Coworker Handoff (Tier 3)** — Spec-ready with attribution emphasis

To run a test case, copy the prompt from the JSON and paste it into Claude Code.

---

## What You'll Get

After each pipeline run:

### Immediate outputs:
- `scout_input/` — Source docs pulled from Confluence/Jira
- `briefs/[project].brief.md` — Three-gate brief with [R]/[D]/[A]/[?] tagging
- `critic-pass-1.md` — Pre-build scorecard (6 dimensions)
- `prototypes/[project]/index.html` — Working HTML prototype
- `critic-pass-2.md` — Post-build scorecard + delta table
- `council-testimony.md` — 5 framework voices

### Handoff packet:
- `briefs/handoffs/nicole-[project]-[date]/`
  - `CLAUDE.md` — Orientation for next session
  - `README.md` — Reading order
  - `HANDOFF.md` — Verified stats, tensions, three calls
  - `NEXT-STEPS.md` — Decisions + pipeline re-run plan
  - `[project]-rail.md` — Bradley rail as markdown
  - Complete copies of brief, prototype, critic passes, council testimony
  - Source docs directory

---

## Ownership Attribution

Every prototype includes **X% Nicole** attribution on components involving judgment:

- Bradley rail cards (Product, Design, Research, Eng)
- Strategy recommendations
- Design decisions

**How it's calculated:**
- `100%` — You wrote from scratch
- `70%` — Heavy edit on tool suggestion
- `0%` — Accepted verbatim

See `references/ownership-attribution.md` for display patterns and `references/attribution-matrix.md` for real examples.

**Why this matters:** From CLAUDE.md §6 (Honor Code):
> "Unfair advancement is substitution. Legitimate assistance is mechanics in service of judgment you hold."

Attribution makes the distinction visible.

---

## Fidelity Tiers (30/60/90 Plan)

The skill validates briefs against fidelity level:

| Tier | Name | [A]+[?] Threshold | Purpose |
|------|------|-------------------|---------|
| **Tier 1** | Concept | 50-70% OK | Exploring ideas, high [A] expected |
| **Tier 2** | Direction | 40-60% OK | Testing approach before committing |
| **Tier 3** | Spec-ready | <30% required | Build planning, must be verified |

If your [A]+[?] ratio exceeds the threshold, the skill will flag it and ask whether to proceed.

---

## Council Testimony

Every prototype runs 5 analytical frameworks:

1. **Jobs-to-Be-Done** (Christensen) — What job is being hired?
2. **Service Blueprint** (Shostack) — Frontstage/backstage split
3. **Self-Determination Theory** (Deci/Ryan) — Autonomy, competence, relatedness
4. **Disruptive Innovation** (Christensen) — Sustaining vs. disruptive
5. **Value Chain** (Porter) — Where does this insert? Margin effect?

**Contradictions are preserved, not resolved.** If JTBD and Service Blueprint disagree on transparency, the handoff packet routes that to you as a decision.

---

## Creating Your Own Test Cases

After your first prototype, the skill will offer to help you create test cases. It will interview you about:

- What you prototype most often
- What fidelity levels you work at (Tier 1/2/3)
- Where you pull sources from (Confluence spaces, Jira, local files)
- Whether you want council contradictions
- Which components matter most (Apex Bridge, attribution, Bradley rail, etc.)

Then it generates 2-3 realistic test cases tailored to your workflow and saves them as `test-cases-[your-name].json`.

---

## Apex Bridge Delivery

For ACP prototypes, Apex Bridge is the default delivery pattern:

- Overlay slides in from right or appears as modal
- Visible close/dismiss control
- ACP brand present but feels native to host (N-central, Adlumin)
- Semi-transparent backdrop if modal

**Apex Bridge ownership:** Bryce Wilson + Patrick Cavanaugh. The skill implements their pattern.

---

## The 47% Rule

Any ratio, count, or stat in a handoff packet must be grep-verified before shipping. The skill checks this automatically.

**Why:** Spec once self-reported 47% [A]+[?]; grep showed 80%. Fluency does not know its own math.

---

## Non-Negotiables

From CLAUDE.md:

1. **Pipeline is always full** — Steps do not drop
2. **47% rule** — Verify every stat before quoting
3. **Ownership attribution** — X% Nicole, not "AI contamination"
4. **Unknown ROI named honestly** — Don't fabricate numbers to fill gaps
5. **Tensions routed, not resolved** — Council contradictions are decisions for you
6. **Front page test** — If it wouldn't be comfortable public, it doesn't go in seed data

---

## Questions?

This skill implements the Band Protocol as defined in `/Users/elizabeth/Desktop/Bethproto/CLAUDE.md`.

**The governing constraint:** Lucy holds the clipboard. Claude works for you, not the vendor.

---

**Ready to prototype?** Try one of the test cases from `test-cases-nicole.json` or just ask Claude naturally to prototype any ACP feature.
