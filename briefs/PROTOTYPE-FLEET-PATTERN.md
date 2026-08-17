# Prototype Fleet with Automated Acceptance Testing

**Status:** Documented pattern. Not yet implemented. Requires Friday decision on prototype acceptance rubric.

---

## What it does

Spawn 3–6 subagents to build competing concept variants from a single spec in parallel, then run one independent critic agent that validates each prototype against a shared acceptance rubric using the Claude Browser MCP.

Only prototypes that pass acceptance tests reach your desk, with a scored comparison table already written. Failing variants return to their builder agent for up to 2 fix rounds.

---

## Why this matters

Right now, prototype iteration is:
1. You hand off a spec
2. Claude builds one variant
3. You review in browser, identify ~5 problems
4. Back to step 2

With a fleet + acceptance tests:
1. You hand off a spec
2. Five agents build five variants in parallel (~4 min total, not 20 min serial)
3. Critic agent tests each against Apex token compliance, no truncated headers, keyboard reachability, jargon-free copy
4. Only passing variants + scored comparison table appear on your desk
5. Failing variants auto-retry in the background; you see them only if they don't self-fix

**Time saved:** ~40% on iteration cycles. **Quality gate:** Acceptance tests catch the same 5 problems before you see them.

---

## The rubric — must be defined by Beth

The prototype acceptance tests live in a machine-checkable rubric. Examples:

```yaml
# prototype-acceptance.md

## Brand Compliance
- [CSS] All button fills use Apex 2.0 purple tokens only (`--purple` or `var(--primary)`)
- [CSS] No rounded corners (Bauhaus rule: sharp angles only)
- [Visual] No truncated column headers (browser scroll-width test)
- [Visual] All interactive elements keyboard-reachable (Tab traversal test)

## Copy & Clarity
- [Text] No spec jargon in UI labels (no "asset," "entity," "decompose")
- [Text] No consultant-speak (no "leverage," "synergy," "drive alignment")
- [Text] Button copy is imperatives, not nouns ("Save" not "Submission")

## Layout
- [Grid] Main container respects 28px grid (pixel-perfect alignment test)
- [Spacing] No orphaned single-column layouts on mobile
```

Each rule gets a Playwright assertion or a visual check (screenshot comparison, DOM inspection).

**Friday decision needed:** What rules go in this rubric? Defaults:

```
Required:
- Apex 2.0 purple verification
- No truncated column headers
- Keyboard navigation (Tab + Enter)
- No spec jargon in visible copy

Optional (add if you use them):
- 28px grid alignment
- Figma design token exact match
- Content length caps (max 80 chars for labels)
- Color contrast (WCAG AA)
```

---

## Implementation steps

### Step 1: Build the rubric file
Write `briefs/prototype-acceptance.md` with your actual rules. Refer to existing prototypes to reverse-engineer your standards.

### Step 2: Write the Playwright validator
A simple script that opens each prototype in a headless browser and checks:
- CSS token values (regex against `<style>`)
- Header text length (DOM query)
- Keyboard nav (simulated Tab keypresses)
- Copy text (search for forbidden words)

### Step 3: Update the prototyping skill
Modify `.claude/skills/prototyping/SKILL.md` Step 5 to add a fleet option:

```markdown
## Step 5: Build fleet (optional)

**Parallel builds** (new): Spawn N subagents to build competing variants from the same spec. Requires acceptance rubric.

- Fast fleet (default): 3 agents, 1 fix round
- Full fleet: 6 agents, 2 fix rounds
- Solo (classic): 1 agent, iterate with you

Usage: invoke prototyping skill with `--fleet full` or `--fleet 3` to set the fleet size.
```

### Step 4: Wire the critic agent
At the end of each prototype build, launch the critic agent with:

```
Validate this prototype against prototype-acceptance.md.
For each rule in the rubric, run the corresponding browser check.
Report: PASS / FAIL for each rule, with screenshot evidence.
If FAIL, suggest the specific code change needed.
If 3+ rules fail, return to the builder agent with a fix request.
```

---

## Example output (what you'd see)

```
Prototype Fleet Results — QBR Concept A

Variants built:    5 ✅
Passed acceptance: 4 ✅
Failed & returning: 1 🔧

=== Passed (scored, best first) ===

1. Variant C — "Filtered Triage View"
   Readiness: Tier 2 Direction
   Acceptance: 14/14 rules ✅
   Score: 8.2/10 (one council tension on complexity)

2. Variant A — "Single Table, Sorted"
   Readiness: Tier 2 Direction
   Acceptance: 14/14 rules ✅
   Score: 7.9/10

3. Variant E — "Kanban Swim Lanes"
   Readiness: Tier 1 Concept
   Acceptance: 14/14 rules ✅
   Score: 6.8/10

4. Variant B — "Pivot Summary"
   Readiness: Tier 1 Concept
   Acceptance: 13/14 rules ⚠ (one column header truncated on 720px width)
   Score: 6.1/10

=== Failed & Fixing ===

Variant D — "Dashboard"
Failed: 6/14 rules
  ❌ Spec jargon: "decompose" in label
  ❌ Rounded corners on cards
  ❌ Column header truncation
  ❌ Button copy "Submission" (noun, not imperative)
  ❌ Purple token value is #8B5CFF (not --purple)
  ❌ Keyboard nav broken (Tab skips the filter panel)
Returning to builder for fixes...

Next check: 3 min | Full results: ./handoffs/qbr-fleet-2026-08-13/
```

---

## Friday chores to unblock this

- [ ] **Define the acceptance rubric** — list your actual rules in `briefs/prototype-acceptance-DRAFT.md` (30 min). Reference existing prototypes to see what you already enforce.
- [ ] **Decide fleet size** — 3 agents (fast), 6 agents (thorough), or don't use fleets (solo).
- [ ] **Decide fix rounds** — how many auto-retries before failing variant reaches you? (1 is conservative, 2 is forgiving.)
- [ ] **Test Playwright in this repo** — are you comfortable with headless browser tests, or should critic use screenshot inspection instead? (This changes implementation complexity.)

Once defined, drop those three items below in Friday Chores, and when you're ready to implement, the pattern is above.

---

## Related

- `/.claude/skills/prototyping/SKILL.md` — the skill this extends
- `briefs/prototype-acceptance.md` — your machine-checkable rubric (does not exist yet)
- `validate_sources.py` — citation validator (separate, unrelated tool — see CHORES.md for that one)
