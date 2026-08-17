---
name: abductive-tag
description: Run the dual-tag pass on rows from the abductive spreadsheet. Beth abducts first (her color, her interpretation). Claude classifies deductively second (inference type, evidence class, validation path, divergence). Never run this before Beth has done her abductive pass — reversing the order anchors Beth's interpretation to Claude's corpus bias.
---

# The Abductive-Tag Skill — Beth abducts, Claude deduces, neither pretends otherwise

**Governing constraint (CLAUDE.md §18):** Beth abducts. Claude deduces. The two reasoning modes are not the same and are not interchangeable.

- **Beth's pass** = tacit and implicit knowledge made legible. Qualitative bias in the best sense: interpretation drawn from embodied expertise, domain context, years of lived experience. The color code IS the abductive inference. Claude cannot generate this.
- **Claude's pass** = deductive classification applied to what Beth already coded. Pattern-matching across a training corpus (Western, digitized, English-dominant). What looks like abduction is "which trained pattern fits this input" — retrieval, not a novel explanatory leap.
- **Divergence is data.** Where Claude's deductive read differs from Beth's abductive one, name it. That gap marks where the inference is weakest or the tacit knowledge is doing the most load-bearing work.

---

## Precondition — do not skip

**Confirm Beth has done her pass before running Claude's.** Ask:

> "Has your abductive pass on this sheet already happened — do you have your color codes / interpretations in place?"

If no: wait. This skill does not run first.

---

## Input format

Beth pastes rows. Each row has at minimum:

| Observed | Beth's Interpretation | Beth's Tag/Color |
|---|---|---|
| What was seen, heard, or found — the datum. | Her abductive read: what she thinks this means. | Her human-readable marker (color, word, symbol — whatever she uses). |

The Observed column should carry a source citation if one exists.

---

## Claude's output — five columns appended to Beth's

For each row, Claude adds:

### 1. Inference Type
What kind of abductive move does Beth's interpretation represent?

| Type | Definition |
|---|---|
| `pattern-match` | "I've seen this before in other contexts" — an analogical inference from prior experience |
| `causal` | "This behavior implies that mechanism" — a claim about cause and effect |
| `gap` | "They're not doing X, therefore they lack Y" — inference from absence |
| `analogy` | "This is structurally like [other domain]" — cross-domain transfer |
| `projection` | "This operator → all operators" — generalization from a specific case |
| `normative` | "This is how it should work" — a value judgment embedded in the interpretation |

A single row may have more than one type. Name all that apply.

### 2. Evidence Class
`[R]` Research (primary source, named) · `[D]` Data (quantitative, cited) · `[A]` Assumed (inference, not observed) · `[?]` Unknown (no source, cannot verify)

Apply to Beth's interpretation, not to the observation itself. The observation should already carry its own sourcing.

### 3. Validation Path
One sentence: what would confirm or disconfirm this inference?

The validation path depends on the inference type:
- `pattern-match` → find more instances (n=? additional operators)
- `causal` → test the mechanism (does removing X change Y?)
- `gap` → verify the absence is real, not just unobserved
- `analogy` → find the disconfirming case (where the analogy breaks)
- `projection` → expand the sample (what does a second operator say?)
- `normative` → name who holds the norm and who doesn't

### 4. Translation Status
Where is this insight in the why → what → build sequence?

| Status | Meaning |
|---|---|
| `WHY-HELD` | Confirmed or well-inferred why; no product direction yet. **Legitimate resting state — not a gap, not a blocker.** Some rows live here for months. |
| `TRANSLATING` | Working hypothesis about what to build exists, but not yet validated. |
| `BRIEF-READY` | Product direction is clear; evidence class upgraded or bet consciously named. |

A well-sourced `[R]` row can still be `WHY-HELD` indefinitely. Insight quality and brief-readiness are separate questions. Do not pressure a `WHY-HELD` row toward translation — that move belongs to Beth, not the machine.

### 5. Divergence
Does Claude's deductive read differ from Beth's abductive one?

`N` — reads align.  
`Y — [one sentence naming the specific point of divergence]`

Divergence is not a correction. It is information about where Beth's tacit knowledge is doing work that Claude's corpus doesn't support — or where Claude's pattern-matching is imposing a frame Beth didn't intend. Both are possible. Neither takes precedence.

---

## Output format

Return the full table: Beth's three columns intact on the left, Claude's five columns appended on the right.

```
| Observed | Beth's Interpretation | Beth's Tag | Inference Type | Evidence Class | Validation Path | Translation Status | Divergence |
|---|---|---|---|---|---|---|---|
| [datum, source] | [Beth's read] | [color/word] | [type(s)] | [class] | [one sentence] | WHY-HELD / TRANSLATING / BRIEF-READY | N / Y — [sentence] |
```

Do not rewrite Beth's columns. Do not "improve" her interpretation. If her phrasing is ambiguous, name the ambiguity in the Divergence column — do not resolve it.

---

## What this skill refuses to do

- Run before Beth's abductive pass is complete.
- Substitute Claude's inference for Beth's interpretation.
- Treat `[A]` as a problem to fix rather than a signal to track.
- Resolve divergence by choosing a side.
- Claim the inference type is objective — it is Claude's deductive read of Beth's abductive move, not ground truth.

---

## Connection to brief confidence regime

`WHY-HELD` rows feeding into a brief set the brief's `confidence_regime` upstream. A brief built on `WHY-HELD` insights is operating on real, confirmed knowledge that hasn't translated to product direction yet — that is `PROCEED-FLAGGED`, not `BLOCKED`. The machine should build with flags visible, not refuse to build.

When tagging rows, note which ones are feeding an active brief. If the majority of brief-facing rows are `WHY-HELD`, flag this in the output: the brief is running on untranslated insights and should carry `PROCEED-FLAGGED` with `proceed_because` authored by Beth.

---

## Graduation condition (when a row moves to the brief)

Two separate questions. Both must be answered.

**Insight quality** — has the why earned its confidence?
1. Validation Path executed (evidence gathered, test run, n expanded) → Evidence Class upgrades from `[A]`/`[?]` to `[R]`/`[D]`, OR
2. Assumption consciously held as a named design bet — Beth decides to proceed on it with the risk stated.

**Translation status** — does the why have a product direction?
3. Translation Status is `BRIEF-READY` — someone has named what to build from this insight.

A row is brief-ready when it satisfies both (1 OR 2) AND (3).

`WHY-HELD` is not a failure state. It means the insight is real and the translation hasn't happened yet. That is the honest middle of synthesis work. Do not push a `WHY-HELD` row toward `BRIEF-READY` — that move belongs to Beth.

---

*Beth abducts. Claude deduces. The implicit knowledge lives in the human's column. Values over rules, always.*
