# Ownership Attribution (X% the operator)

**Principle:** Display authorship as percentage of human contribution, not tool contamination. Centers the human as author.

---

## How to Calculate

**Three methods (pick what fits the context):**

### Method 1: Edit Distance
Track how much the human changed from tool output.
- `100%` — Human wrote from blank page
- `70-90%` — Heavy rewrite (kept structure, rewrote most content)
- `40-60%` — Moderate edit (kept content, changed phrasing/order)
- `10-30%` — Light edit (fixed typos, tweaked a few words)
- `0%` — Accepted verbatim

### Method 2: Origination
Who brought the idea/content first?
- `100%` — Human originated, tool refined
- `50%` — Collaborative (human seeded, tool expanded, human edited)
- `0%` — Tool generated, human approved

### Method 3: Self-Report
Just ask the human: "What percentage of this feels like yours?"

**Default when unknown:** `0%` (tool-generated, human approved). Do not guess.

---

## Display Patterns

### Pattern 1: Inline Badge (for cards, sections)

```html
<div class="card">
  <div class="card-content">
    <!-- content here -->
  </div>
  <div class="attribution">
    <span class="attribution-badge">85% the operator</span>
  </div>
</div>
```

```css
.attribution {
  margin-top: 1rem;
  padding-top: 0.5rem;
  border-top: 1px solid var(--grid);
  font-family: 'Space Mono', monospace;
  font-size: 0.75rem;
  color: var(--ink);
  opacity: 0.6;
}

.attribution-badge {
  background: var(--paper);
  padding: 0.25rem 0.5rem;
  border: 1px solid var(--ink);
}
```

### Pattern 2: Footer (for full screens)

```html
<footer class="screen-footer">
  <span>100% the operator</span>
  <span class="separator">·</span>
  <span>Draft v1</span>
  <span class="separator">·</span>
  <span>2026-05-28</span>
</footer>
```

### Pattern 3: Hover Tooltip (for dense UIs)

```html
<div class="content" data-attribution="70% the operator">
  <!-- content here -->
</div>
```

```css
.content[data-attribution]::after {
  content: attr(data-attribution);
  position: absolute;
  bottom: 0;
  right: 0;
  padding: 0.25rem 0.5rem;
  background: var(--card);
  border: 1px solid var(--ink);
  font-size: 0.7rem;
  opacity: 0;
  transition: opacity 0.2s;
}

.content[data-attribution]:hover::after {
  opacity: 1;
}
```

---

## Multi-Author Pattern (Future)

When multiple humans contribute:

```
40% the operator  /  30% the recipient  /  30% Tool
```

Display tool contribution as remainder, not as primary metric. Human names come first.

---

## Hard Mode Rules (From Lawrence Honor Code)

If the prototype includes a "Hard Mode" toggle for professional standards:

- **Mode 5 (Publication-ready):** Entries must be ≥70% human-authored
- **Mode 4 (Peer review):** Entries must be ≥50% human-authored
- **Mode 3 (Draft):** No threshold
- **Mode 2 (Exploration):** No threshold
- **Mode 1 (Brainstorm):** No threshold

Tool should warn but not block if submission doesn't meet mode threshold. Final call is human's.

---

## Example: Review Rail Card

```html
<div class="routed-card">
  <div class="card-header">
    <h3>Product</h3>
  </div>
  <div class="card-body">
    <p><strong>Product does:</strong> Define trust-level thresholds for each monetization tier</p>
    <p><strong>Why now:</strong> Usage Ledger ships Q3 [D]</p>
    <p><strong>If you ship without it:</strong> customers see charges they don't trust</p>
    <div class="roi">
      <p><strong>Business:</strong> Reduces churn by 12% [D: CSM interview study]</p>
      <p><strong>User:</strong> Saves 15 min/month reviewing charges [D: time-motion study]</p>
      <p><strong>Unknown:</strong> Threshold sweet spot — where does trust flip?</p>
    </div>
  </div>
  <div class="attribution">
    <span class="attribution-badge">65% the operator</span>
    <span class="attribution-note">Heavy edit on tool outline</span>
  </div>
</div>
```

**Why 65%?** the operator provided the threshold concept and Unknown gap. Tool suggested the churn stat and time savings. The operator verified both stats against source docs and rewrote the consequences.

---

## Why This Matters

From CLAUDE.md §6 (Academic Integrity):

> Unfair advancement is substitution. Legitimate assistance is mechanics in service of judgment you hold.

Ownership attribution makes the distinction visible. `0% the operator` on a strategy recommendation = substitution. `0% the operator` on a formatted bibliography = legitimate mechanical assist.

**The test:** If the operator's advisor asked "Did you write this?" — what would the operator say? The percentage should match that answer.

---

## When to Skip Attribution

- **Pure tool execution:** Code formatting, regex, boilerplate generation — no authorship claim
- **Sourced facts:** `[CS: VERIFIED]` claims from primary sources — attribution is to the source, not the person who found it
- **Design system compliance:** Color values, typography, shadows — these are locked, no authorship

**Only attribute when judgment or synthesis is involved.**

---

## Integration with SKILL.md

The build agent should include attribution by default when:
- review rail cards contain ROI or recommendations
- Prototype screens show strategy or design decisions
- Handoff packets include analysis or next-step calls

Ask the human: "What percentage of [this card / this analysis / this recommendation] feels like yours?"

Record their answer. Display it. Do not guess.

---

**This is principle #3 from Strategic Prototyping Protocol design principles:** Attribution as X% the operator (human-centered, not tool-defensive). See memory: `feedback_band_protocol_design_principles.md`
