# MAINTENANCE — keeping the library honest

This toolkit is a living library, and a methods matrix that nobody maintains quietly rots into a taxonomy wish. This file is the contract for changing anything in `docs/`.

---

## The invariants (check before every commit)

1. **Symmetry.** If method A lists method B at +2 in the adjacency list, B lists A at +2. Same for +1.
2. **Bounds.** Every relation score ∈ {0, +1, +2}. **No negative scores, ever** — apparent conflicts are parallel hypotheses clustered around different questions (the governing principle: innovation navigates paradox). If you're tempted to add a −1, you've found two methods answering different questions; check the cluster assignment instead.
3. **Single home.** Every method has exactly one `●●` home cluster in the Item × Cluster matrix.
4. **Count consistency.** The method count (currently 44) and cluster count (currently 14) match everywhere they're quoted — SKILL.md, README, both matrices. Grep before you quote (see "Verified math" below).
5. **Citation coverage.** Every method in the matrix has an entry in `docs/frameworks-references.md`. A method without a citation does not enter the matrix.

### Symmetry checker

Run this whenever the adjacency list changes:

```python
import re
text = open('docs/methods-library-matrix.md').read()
adj = {}
for num, name, body in re.findall(r'\*\*(\d+) ([^*]+?)\*\*.*?\n((?:- \+\d:.*\n?)+)', text):
    for level, partners in re.findall(r'- \+(\d): (.+)', body):
        for part in partners.split(','):
            m = re.match(r'\s*(\d+)', part)   # leading ID only — method NAMES contain digits ("Mode 1", "10 Types")
            if m: adj[(int(num), int(m.group(1)))] = int(level)
errors = [(a, b, v, adj.get((b, a))) for (a, b), v in adj.items() if adj.get((b, a)) != v]
print("SYMMETRIC" if not errors else "ASYMMETRIC:")
for a, b, v, w in sorted(errors): print(f"  {a:02d}<->{b:02d}: {a} says +{v}, {b} says {w or 'nothing'}")
```

An asymmetric pair is a hard stop — fix it before committing. (A first draft of this checker extracted *every* digit from partner strings and reported 76 false asymmetries because method names contain digits. The comment above is load-bearing.)

---

## Adding a method

1. **Cite it first.** Add the canonical citation (author, work, year, link) to `docs/frameworks-references.md`. No citation, no entry.
2. **Assign a tradition code** (IIT, ABD, STRAT, INNOV, PSYCH, UX, MKT, PLAN, CMPLX, IDEO, ANT/LIB) — or declare a new one in the Tradition Codes table.
3. **Find its home cluster by its question**, not its fame. Ask what the method takes in, does, and produces; the cluster whose question it answers is home. If no cluster's question fits, you may have found a fifteenth cluster — that's a bigger change; propose it explicitly.
4. **Score the Item × Cluster row** (its home gets `●●`; other clusters it meaningfully reinforces get `●`).
5. **Add adjacency entries symmetric both ways.** +2 = same engine; +1 = complementary; unlisted = independent.
6. **Validate against density.** A new method claiming a home cluster should reinforce at least one existing member of that cluster. A method with zero partners anywhere is either genuinely novel (say so) or misread.
7. **Mark it `[+]` with a date** and log it in the matrix's "Additions Declared" table with one sentence on why.
8. Run the symmetry checker.

## Retiring a method

Never silently delete. Mark it ☠ in place with a date and one line on why (superseded by X, never surfaced in practice, citation didn't hold up). Remove its adjacency entries — both directions — and note the removal in the changelog. Dead entries stay visible so downstream users know the method was considered and retired, not overlooked.

## Verified math — the rule that has already paid for itself

Any ratio, count, or statistic quoted anywhere in this repo gets mechanically re-verified against its source before it ships — grep it, count it, run the checker. Origin story: a document in this toolkit's ancestry once self-reported 47% assumption-tagged claims; an actual grep showed 80%. **Fluency does not know its own math.** Corollaries:

- **Echo check:** two agreeing sources count once if one learned it from the other.
- **Dead numbers** get marked ☠ in place with the correction next to them, never silently overwritten — the correction trail is part of the data.

## Reference hygiene

- Prefer primary sources (the paper, the book, the author's own site) over summaries.
- When a method's label in the matrix is this library's shorthand rather than the author's own term, say so in the reference entry (see the Quality Pyramid and Hard Mode entries for the pattern) and tag the confidence.
- Link rot: when a URL dies, replace it and note the swap — don't just delete the link.

## Versioning

- Date every substantive change in the changelog below and in the touched file's frontmatter `status:` line.
- The matrix carries its own version history footer — extend it, don't rewrite it.

## Publishing checklist (before pushing this repo public)

- [x] Swap the placeholder repo URL in `.claude/skills/prototyping/SKILL.md` for the real one — done, points at eaconnor/prototyping-toolkit.
- [x] Add a LICENSE file — MIT, everything.
- [x] Publicity sweep — clean, no internal names found.
- [x] Run the symmetry checker one last time — 44 methods, symmetric, 0 errors.

---

## Changelog

- **2026-08-11** — Initial public extraction: matrix de-branded from its internal origin, references file and this maintenance contract added, skill rewritten generic. (Extracted from a working internal toolkit; all methods are public scholarship — see `docs/frameworks-references.md`.)
