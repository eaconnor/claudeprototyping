#!/usr/bin/env python3
"""figures.py — extract the FIGURES from a research artifact, as a sorted multiset.

WHY THIS EXISTS. check-condens.sh used to compare an artifact's updatedAt against the
date a human last reconciled. That routed a person to look, but it could not say what
kind of change had happened: a typo fix and a reversed finding both move updatedAt.
Half the value of the check leaked out there, because a check that cries wolf on
copy-edits gets muted, and the one time it matters it is already muted.

The fix is the one check-drift.sh already uses for files on disk: stop trusting the
metadata and hash the content. That gives three outcomes instead of two —
content identical, prose moved, FIGURES moved — and only the third is urgent.

WHY FIGURES SPECIFICALLY, AND NOT A GENERIC DIFF. The claims a spec draws from this
corpus are numeric. Real examples from artifacts registered in this project:
"CSAT 34%", "SUS 67", "adoption <5%", "4.4/5", "17 moderated interviews", "73
responses". CLAUDE.md's 47% rule already says any ratio, count or stat in a handoff
must be grep-verified before it ships. If a figure in the source moved, every
downstream claim quoting it is now unverified — that is the case worth failing a build
over. If only prose moved, a skim will do.

WHAT IS DELIBERATELY DISCARDED, and why each would otherwise churn:
    the leading metadata block   published/start/end dates move on any re-publish
    URL targets                  Pendo replay links carry epoch ms (startTime=1750157952900)
    ISO dates and clock times    a date is metadata, not a finding
    image filenames              "Screenshot 2026-06-01 at 2.43.36 PM.png"

WHAT IS DELIBERATELY KEPT, even though it is arguably not a statistic:
    participant labels (P12)     the participant set changing IS a figure change
    numbered recommendations     gaining a 14th recommendation is substantive

HONEST LIMIT — THIS IS OVER-BROAD ON PURPOSE. "A figure" is a regex judgement, not a
parse. It will sometimes report FIGURES for a renumbered list. That trade is
deliberate: a false FIGURES costs a human ten seconds, because the caller prints the
exact numerals that entered and left. A missed one costs a false claim in a spec.
Tune it down only with a real false positive in hand, not in anticipation of one.

Usage: figures.py FILE      prints one numeral per line, sorted, duplicates kept
"""
import re
import sys

DROP = [
    (re.compile(r'\]\([^)]*\)'), ']()'),            # markdown link targets
    (re.compile(r'https?://\S+'), ' '),             # bare URLs
    (re.compile(r'!\[[^\]]*\]'), ' '),              # image alt text / filenames
    (re.compile(r'\b\d{4}-\d{2}-\d{2}\b'), ' '),    # ISO dates
    (re.compile(r'\b\d{1,2}:\d{2}(:\d{2})?\b'), ' '),  # clock times
    (re.compile(r'\.(png|jpg|jpeg|gif|svg|pdf)\b', re.I), ' '),
]

NUM = re.compile(r'\d+(?:[.,]\d+)*%?')


def figures(text: str):
    # The metadata block is everything up to the second horizontal rule. Artifacts
    # open with "# Title" then "---" then "## Metadata:" then "---".
    parts = re.split(r'(?m)^---[ \t]*$', text)
    body = '---'.join(parts[2:]) if len(parts) > 2 else text

    for pat, sub in DROP:
        body = pat.sub(sub, body)

    out = []
    for m in NUM.finditer(body):
        tok = m.group(0).rstrip('.,')
        if tok:
            out.append(tok)
    return sorted(out)


def main():
    if len(sys.argv) != 2:
        sys.stderr.write("usage: figures.py FILE\n")
        return 2
    try:
        with open(sys.argv[1], encoding='utf-8') as fh:
            text = fh.read()
    except OSError as e:
        sys.stderr.write(f"figures.py: {e}\n")
        return 2
    figs = figures(text)
    if not figs:
        # Zero findings is never a pass. An artifact with no numerals at all is
        # possible, but silently returning an empty set would make every comparison
        # against it succeed. Say so and let the caller decide.
        sys.stderr.write("figures.py: no numerals found in body\n")
        print("")
        return 3
    print("\n".join(figs))
    return 0


if __name__ == '__main__':
    sys.exit(main())
