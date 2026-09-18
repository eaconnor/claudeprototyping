---
artifact: datadump
project: ‹project name›
date: ‹YYYY-MM-DD›

# METHOD — free text, and deliberately not a closed list.
# This is the field that keeps this template usable by someone who is not the person
# who wrote it. The original it was extracted from used grounded-theory-style axial
# coding, because that is what its author does. Almost nobody else will do that, and
# a template that required it would be quietly unusable — so `method:` takes whatever
# you actually did. Real examples, none privileged:
#   grounded-theory-style axial coding over N corpus files
#   thematic analysis, two passes, one coder
#   affinity mapping from 9 interviews, workshop of 4
#   Jobs-to-be-Done interview decomposition
#   Condens tag taxonomy — tags rolled up by Tag Group
#   read everything once and wrote down what recurred   <- legitimate, just say so
method: ‹what you actually did — not what sounds rigorous›

# WHO DID THE CODING, AND IN WHICH REASONING MODE. Not bureaucracy: if a human and a
# model both coded this, their disagreements are the most valuable rows in the file.
# Name which is which so a later reader can tell abduction from pattern-matching.
coder_division: ‹e.g. "all codes below are model-deductive; the human's column is the
  empty ⟡ slot per theme — divergence between them is a finding, not a defect" or
  "single human coder, no model involvement"›

# WHERE THE RAW MATERIAL IS. This file is a CUT of something bigger. Without a pointer
# to the bigger thing, nobody can check what the cut dropped.
raw_source: ‹path, Condens project URL, Confluence space, or transcript folder›

# WHAT THIS CUT LEFT OUT, NAMED BY THE PERSON WHO MADE THE CUT. A sieve with an
# unnamed mesh reads as a complete picture.
selection_bias: ‹what got dropped and on whose judgment›

confidence_regime: PROCEED-FLAGGED
proceed_because: ‹why a partial synthesis now beats a complete one later›
machine_behavior: ‹e.g. "no synthesis presented as settled · human-judgment slots stay
  empty · proposed themes are provisional, the owner's to kill"›
---

# ‹Project› — Datadump · ‹date›

One paragraph: what corpus this is over, how big it is, and what question you were
holding while you read it. If you were not holding a question, say that — it changes
how the themes below should be read.

---

## Themes

Repeat this block per theme. Keep the count honest: if you found three, write three.
A template with eight slots produces eight themes whether or not they exist.

### T1 · ‹THEME NAME› — ‹the one-line claim it makes›

**What it is.** Two or three sentences.

**Evidence.** Every row cites something a reader can open. A theme with no citable
evidence is a hypothesis; label it as one.

| # | source | what it says | tag |
|---|---|---|---|
| 1 | ‹file / Condens highlight / ticket› | ‹short quote or finding› | `[R]` |
| 2 | ‹…› | ‹…› | `[D]` |

**Counter-evidence.** What cuts against this theme. If you found none, write "none
found" — which is a different and weaker statement than "none exists."

**⟡ ‹Owner name›'s reading — [0% ‹owner›]**

> Left empty on purpose. This is the interpretive leap, and it is the one thing in
> this file that cannot be delegated to a model or to a colleague reading the same
> sources. Fill it in your own words or leave it blank; do not let it be filled for
> you. `check-judgment.sh` treats an unfilled slot as `[?]`, never as a licence to
> draft.

---

## Proposed core themes — provisional

The two or three themes you think organise the rest. Marked proposed because a core
theme is a claim about structure, and structure is the owner's call.

- ‹theme› — ‹why it might be core› · **status:** PROPOSED

## Coverage gaps — stated, not discovered later

What this corpus does not cover, per discipline. This section is what turns a datadump
into a research plan instead of a conclusion.

| discipline | gap | what would close it |
|---|---|---|
| ‹research› | ‹whose voice is missing› | ‹the study that would get it› |
| ‹data› | ‹what was never instrumented› | ‹the query or event› |

## Changelog

Newest first. Never silently delete a wrong finding — mark it ☠ with a note saying
what replaced it and when.

- ‹YYYY-MM-DD› — ‹what changed›
