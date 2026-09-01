#!/usr/bin/env python3
"""
Anonymize partner/customer names in the handoff package.

Rule: first name + last initial (e.g. "Jeff Zimbalist" → "Jeff Z.")
Exception: Robby Swartenbroekx is APPROVED for external use → keep as-is
Exception: Nicole Reineke is N-able employee → keep as-is
Company names that identify a partner → stripped (except b-inside which is approved)

Does NOT touch:
  - nicole-acp-datadump/ (raw source — stays intact)
  - _gen_sidecars.py output (regenerate JSON after this runs)
  - Files that start with _ (internal)
"""
import re
import sys
from pathlib import Path

HERE = Path(__file__).parent

# Order matters: longest match first to avoid partial replacements
REPLACEMENTS = [
    # Approved — explicit no-op to mark intent
    # ("Robby Swartenbroekx", "Robby Swartenbroekx"),
    # ("Nicole Reineke", "Nicole Reineke"),
    # ("b-inside", "b-inside"),

    # Compound forms first
    ("Aaron Betts / James (engineer)", "Aaron B. / James (engineer)"),
    ("Aaron Betts", "Aaron B."),
    ("Louis Oosthuizen & Wesley Harris", "Louis O. & Wesley H."),
    ("Louis Oosthuizen", "Louis O."),
    ("Wesley Harris", "Wesley H."),
    ("David, Managed IT Experts", "David (MSP partner)"),
    ("David at Managed IT Experts", "David (MSP partner)"),
    ("Sketch (Ditty)", "Sketch (MSP partner)"),
    ("Sketch, Ditty", "Sketch (MSP partner)"),
    ("Taciano Tavares", "Taciano T."),
    ("Donald McKay", "Donald M."),
    ("John Joyce", "John J."),
    ("Jim Lapore", "Jim L."),
    ("Jeff Zimbalist", "Jeff Z."),
    ("Boyd Smith", "Boyd S."),
    ("Christian Kelly", "Christian K."),
    ("Chris Wendt", "Chris W."),
    ("Jeff Young", "Jeff Y."),
    ("Laura DuBois", "Laura D."),
    ("Lee Snyder", "Lee S."),
    ("Michael Bateman", "Michael B."),
    ("Thomas Collier", "Thomas C."),

    # Bare company-name mentions that identify
    ("Managed IT Experts", "[anonymized MSP]"),
]

# Files to skip
SKIP_DIRS = {"nicole-acp-datadump", "_extracted", "framework-templates", "scout"}
SKIP_FILES = set()

# File extensions to process
EXTENSIONS = {".md", ".html", ".json"}


def should_process(path: Path) -> bool:
    if path.suffix not in EXTENSIONS:
        return False
    if path.name.startswith("_"):
        return False
    if path.name in SKIP_FILES:
        return False
    for parent in path.parents:
        if parent.name in SKIP_DIRS:
            return False
    return True


def anonymize_text(text: str) -> tuple[str, int]:
    """Apply all replacements. Return (new_text, replacement_count)."""
    count = 0
    for old, new in REPLACEMENTS:
        if old in text:
            occurrences = text.count(old)
            text = text.replace(old, new)
            count += occurrences
    return text, count


def main():
    if len(sys.argv) > 1:
        roots = [Path(p) for p in sys.argv[1:]]
    else:
        roots = [HERE]

    total_files = 0
    total_replacements = 0
    changed_files = []

    for root in roots:
        for path in sorted(root.rglob("*")):
            if not path.is_file():
                continue
            if not should_process(path):
                continue
            try:
                text = path.read_text()
            except (UnicodeDecodeError, OSError):
                continue
            new_text, count = anonymize_text(text)
            total_files += 1
            if count > 0:
                path.write_text(new_text)
                total_replacements += count
                changed_files.append((path, count))

    print(f"Scanned {total_files} file(s) across {len(roots)} root(s).")
    print(f"Made {total_replacements} replacement(s) in {len(changed_files)} file(s).\n")
    for path, count in changed_files:
        # Print relative-ish path
        try:
            rel = path.relative_to(HERE)
        except ValueError:
            rel = path
        print(f"  {str(rel):50s}  {count} replacement(s)")
    print("\nKept (approved/internal):")
    print("  Robby Swartenbroekx (b-inside) — approved for external use")
    print("  Nicole Reineke — N-able employee")
    print("  b-inside — Robby's company, approved")


if __name__ == "__main__":
    main()
