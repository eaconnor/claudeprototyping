# Ownership Attribution Matrix

**Real prototype scenarios with calculated percentages and reasoning.**

See `ownership-attribution.md` for calculation methods and display patterns.

---

## Quick Reference Table

| Component | % Human | Method | Reasoning |
|-----------|---------|--------|-----------|
| **Trust-Level UI** | 85% | Edit Distance | Human: formula, thresholds, transparency principle, all copy. Tool: gauge viz, colors. |
| **Value Ledger** | 40% | Origination | Tool: table structure from docs. Human: reordered by priority, added Unknown gaps, chose metrics. |
| **Coworker Handoff** | 70% | Self-Report | Human: flow design, context needs. Tool: layout. Human: rewrote labels to match terminology. |
| **Bradley Rail Card** | 65% | Edit Distance | Tool: stats + format. Human: verified stats, rewrote consequences, added Unknown gaps. |
| **Council Testimony** | 0% | Origination | Tool ran framework. Mechanical execution, not substitution. |
| **Handoff CLAUDE.md** | 90% | Origination | Human: orientation, tensions, calls. Tool: formatting. Human's judgment throughout. |
| **Scout Confluence Pull** | 0% | N/A | Mechanical retrieval. Attribution belongs to source authors. |
| **Spec Problem Statement** | 75% | Edit Distance | Human defined problem. Tool structured YAML. Human rewrote statement 3x. |
| **Critic Scores** | 0% | N/A | Mechanical rubric application. Exception: human override = 100% human. |

---

## The Honor Code Test

From CLAUDE.md §6: *"Unfair advancement is substitution. Legitimate assistance is mechanics in service of judgment you hold."*

**Substitution (not OK):**
- Council testimony accepted as "our analysis" without deciding what it means
- Tool ROI stats presented as "my research"
- 0% prototype presented as "my design"

**Legitimate assistance (OK):**
- Scout pulls docs → human synthesizes
- Tool formats brief → human authors problem statement
- Tool applies rubric → human interprets scores

**The test:** If someone asks "Did you do this work?" — does the % match what you'd honestly say?

---

## Edge Cases

### Human rejects tool output entirely and rewrites from scratch
**Attribution:** 100% human on the rewrite. Original discarded, doesn't count.

### Tool generates, human approves without edits, then user #2 edits it
**Two-phase:**
- First delivery: `0% User #1` (tool-generated, approved)
- After User #2 edits: `60% User #2` (their edits on tool base)

User #1's approval doesn't transfer ownership.

### Human copies text verbatim from source doc into prototype
**Attribution:** N/A or `100% [Original Author]`. Copying is not authorship.

### Tool generates, human verifies accuracy, no edits
**Attribution:** 0% human. Verification is not authorship. If human *adds* verification notes, those notes are 100% human, but underlying content remains 0%.

---

## Integration with Handoff Packet

When handoff ships, include attribution matrix for any components with >0% attribution. Show:
- Component name
- % attribution
- Calculation method used
- Brief reasoning

Example from handoff:

```markdown
### Attribution Summary

| Component | Attribution | Method | Notes |
|-----------|-------------|---------|-------|
| Product Card ROI | 65% Nicole | Edit Distance | Nicole verified stats, rewrote consequences, added Unknown gap |
| Design Card | 80% Nicole | Origination | Nicole designed approach, tool formatted |
| Prototype HTML | 30% Nicole | Self-Report | Nicole specified requirements, reviewed, made 3 label edits |
```

---

## For Nicole Specifically

Nicole prototypes ACP features. Her typical attribution pattern:

- **Strategy/positioning content:** 75-90% Nicole (she's the author of source docs, bringing deep context)
- **Bradley rail cards:** 60-80% Nicole (she provides ROI, rewrites consequences)
- **HTML/CSS implementation:** 20-40% Nicole (specifies requirements, reviews, light edits)
- **Council testimony:** 0% Nicole (mechanical framework application)
- **Handoff orientation:** 85-95% Nicole (her judgment on tensions and calls)

**Why this matters for Nicole:** She authored the ACP positioning docs. When the prototype pulls from her own work, her authorship percentage should reflect that she's *applying* her prior work, not generating new strategy. Tool is assembling ingredients Nicole already created.

---

**Related files:**
- `ownership-attribution.md` — full patterns and display methods
- `test-cases-nicole.json` — includes attribution validation criteria
