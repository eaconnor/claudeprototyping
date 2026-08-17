---
doc_id: HANDOFF-README
title: ACP Market Analysis · Handoff Package
version: 1.0.0
status: Hybrid · Consolidated · Anonymized
date: 2026-06-05
owners:
  product: Beth Schwindt
  ai_strategy: Nicole Reineke
  recipient: N-able Spec-Driven Design Team
top_level_md_count: 11
critic_score: 19/30 — strong analysis, some delivery gaps (improving)
known_issues:
  - CLAIM-MATH-DISPUTED-001 — $33,600/month figure doesn't reconcile with formula
  - Wardley framework body still truncated
---

# ACP Market Analysis Handoff Package

**Start here:** `HANDOFF.md` (5-min read, three role tabs).

---

## Folder structure

```
.
├── HANDOFF.md                       ← Tier 1 · The only required read (5 min)
├── README.md                        ← This file
├── TAXONOMY.md                      ← ID schema · grep recipes
├── CS-TAGS.md                       ← Confidence tag reference
├── CLAUDE.md                        ← Orientation for Claude Code sessions
├── nicole-actual-acp-vision.md      ← Strategic synthesis · 6 council corrections
├── acp-vision-from-pdfs.md          ← Source-grounded architecture reference
├── problems-ranked.md               ← MSP problems ranked (math dispute flagged)
├── research-evidence.md             ← 22 partners + 60 competitors + ethnography
├── council-frameworks.md            ← All 9 framework testimonies
├── critic-pass-1.md                 ← Scorecard 19/30 · punch list
│
├── _sidecars/                       ← Auto-generated JSON sidecars (machine query)
├── _scripts/                        ← _gen_sidecars.py · _anonymize.py
├── scout/                           ← Raw scout output (1,602 lines)
├── nicole-acp-datadump/             ← Nicole's full source material
└── framework-templates/             ← Empty templates for running frameworks
```

**11 markdown docs at top level.** Subfolders hide the JSON sidecars, scripts, and raw source materials.

---

## Reading order

**For humans (5–30 min):**
1. `HANDOFF.md` — pick your role tab (Decisions · Research · Leadership)
2. If you want the strategic frame: `nicole-actual-acp-vision.md`
3. If you want partner evidence: `research-evidence.md` Part 1

**For agents / programmatic readers:**
1. `TAXONOMY.md` — the ID schema
2. `_sidecars/*.json` — structured frontmatter + extracted tables for every doc
3. Grep recipes in `TAXONOMY.md#GREP-RECIPES`

---

## How to query the package

```bash
# All disputed claims (the math issue, etc.)
grep -rn "CLAIM-MATH-DISPUTED\|known_issues:" .

# All strategic tensions across docs
grep -rn "TENSION-" .

# All open research questions
grep -rn "OPENQ-" .

# All vendor-marketing sources (don't quote as primary)
grep -rn "source_tier: vendor-marketing" .

# Regenerate JSON sidecars after edits
python3 _scripts/_gen_sidecars.py

# Anonymize new partner content
python3 _scripts/_anonymize.py
```

---

## Anonymization

All MSP partner names anonymized as **first name + last initial** (e.g., "Jeff Z."). Company names stripped where they identify.

**Two intentional exceptions:**
- **Robby Swartenbroekx (b-inside)** — approved for external use per source catalog
- **Nicole Reineke** — N-able employee, not customer

To anonymize new content added later: run `python3 _scripts/_anonymize.py` (edit the `REPLACEMENTS` list if you have new names to anonymize).

---

## What changed in this version

- Combined `primary-research-transcripts` + `competitive-landscape` + `ethnography` → single `research-evidence.md`
- Combined `council-report` + `council-report-extended` → single `council-frameworks.md`
- Moved JSON sidecars into `_sidecars/`
- Moved scripts into `_scripts/`
- Moved raw scout output into `scout/`
- Anonymized 22 partner names (Robby + Nicole preserved)
- Result: 11 docs at top level (down from 15)

---

## Known issues (also flagged in `HANDOFF.md`)

- **`CLAIM-MATH-DISPUTED-001`** — the $33,600/month false-positive savings figure does not reconcile with its stated formula. Don't quote externally until recomputed.
- **Wardley framework body** still truncated in `council-frameworks.md` Part 2.
- **Several CAB partner names** (Christian K., Chris W., Jeff Y., Michael B., Thomas C.) are in the source list but have no quotes in the synthesized record. Voices sit in `nicole-acp-datadump/transcripts/` — worth grepping.

---

**Beth is on vacation.** Questions → docs first, then `CLAUDE.md` orients new Claude Code sessions.
