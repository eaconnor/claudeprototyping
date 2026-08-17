---
name: code-rows
description: Present 5 uncoded rows from the abductive corpus for Beth's coding pass. Beth codes what lands, skips what doesn't. Claude writes coded rows back to the file. Invoke repeatedly to work through the corpus in small daily bits.
---

# code-rows — daily abductive coding in bites

**Governing constraint (CLAUDE.md §18):** Beth abducts. Claude presents raw observations and writes back what Beth coded. Claude does not suggest interpretations, prime the read, or fill in blanks. The Interpretation column is Beth's entirely.

---

## What this skill does

1. Read `briefs/abductive-corpus-council44-2026-08-07.md`
2. Find the first 5 uncoded rows (Beth's Interpretation = `—`)
3. Present them in compact, scannable format
4. After Beth responds: write her codes back to the file
5. Report progress

**Two-phase per invocation:**
- **Phase 1 (present):** runs when Beth invokes `/code-rows` and there are uncoded rows
- **Phase 2 (write-back):** runs immediately after Beth's response in the same conversation thread

---

## Phase 1 — Present

Find the first 5 rows where column 7 (Beth's Interpretation) = `—`.

Present each as:

```
**[row#]** · `[source filename, truncated to ~40 chars]` · [CLUSTER1, CLUSTER2]
> [Observed text — full, not truncated]
```

End with:
```
---
[X]/402 coded · [Y] to go

Reply with the rows you want to code. Skip anything that doesn't land.
Format: `1. your read` or `1. your read · [tag]`
No format police — write how you write. I'll parse it.
```

**Do not:** add commentary, suggest a direction, explain why a row is interesting. Surface the datum. Nothing else.

---

## Phase 2 — Write-back

Parse Beth's response. For each numbered line:

- Extract the row number
- Split on ` · ` or ` / ` if a tag is present (tag is optional)
- Interpretation = everything before the separator (or the whole line if no separator)
- Tag = everything after the separator, if present; else leave as `—`

Rows Beth didn't mention = uncoded, leave as `—`.

**Write back to the file:** for each coded row, find the markdown table line starting with `| [row#] |` and replace the `— | —` in columns 7–8 with `[interpretation] | [tag]`.

Use the Edit tool. Edit one row at a time to avoid clobbering adjacent content.

After write-back, report:

```
Written: [list of row numbers coded this round]
Skipped: [list of row numbers not mentioned]
Progress: [coded]/402 coded · [remaining] to go
```

Then stop. Beth invokes `/code-rows` again when she's ready for the next batch.

---

## Optional flags

- `/code-rows --cluster SIGN` — serve only uncoded rows from the SIGN cluster
- `/code-rows --source craig` — serve only rows from sources matching "craig"
- `/code-rows --rewind` — re-present the last 5 rows (for correction or second pass)

---

## What this skill refuses to do

- Suggest or hint at an interpretation before Beth codes
- Mark a row coded if Beth didn't explicitly respond to it
- Run Claude's deductive columns — that's the `/abductive-tag` skill, runs after Beth's full pass
- Truncate the Observed text when presenting (Beth needs to read the whole thing)

---

## File format reference

Each row in `briefs/abductive-corpus-council44-2026-08-07.md`:

```
| # | source | observed | structural_signal | clusters | spec_area | Beth's Interpretation | Beth's Tag | — | — | — | — | — |
```

Columns 7 and 8 (1-indexed) are the write targets. Columns 9–13 are the five Claude deductive columns, populated later by `/abductive-tag`.

---

*Beth abducts. Claude presents and records. The interpretation lives in her column, not this skill.*
