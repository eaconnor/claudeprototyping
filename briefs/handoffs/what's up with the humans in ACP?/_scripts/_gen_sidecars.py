#!/usr/bin/env python3
"""
JSON sidecar generator for the hybrid markdown pattern.

Walks every .md file in this folder, extracts:
  - YAML frontmatter (top of file between --- markers)
  - H1-H4 headings with {#ID} anchors → section index
  - Markdown tables → structured records if first column looks like an ID column
  - Fenced ```yaml blocks inside the body → embedded structured data

Writes <filename>.json alongside each <filename>.md.

Usage:
    python3 _gen_sidecars.py              # generate sidecars for all .md
    python3 _gen_sidecars.py path/to.md   # generate for one file

The .md is the source of truth. The .json is a derivative — don't hand-edit it.
"""

import json
import os
import re
import sys
from pathlib import Path

try:
    import yaml
    HAS_YAML = True
except ImportError:
    HAS_YAML = False
    print("Warning: PyYAML not installed. Frontmatter will be stored as raw text.")
    print("Install with: pip install pyyaml")


HERE = Path(__file__).parent.parent  # script lives in _scripts/, work on parent

FRONTMATTER_RE = re.compile(r"^---\n(.*?)\n---\n", re.DOTALL)
HEADING_RE = re.compile(r"^(#{1,4})\s+(.*?)(?:\s*\{#([^}]+)\})?\s*$", re.MULTILINE)
TABLE_HEADER_RE = re.compile(r"^\|(.+)\|\s*$", re.MULTILINE)
TABLE_SEP_RE = re.compile(r"^\|[\s\-:|]+\|\s*$", re.MULTILINE)
INLINE_YAML_RE = re.compile(r"```yaml\n(.*?)\n```", re.DOTALL)
ID_HEADER_PATTERNS = (
    r"^id$", r"^.* id$", r"^source id$", r"^claim id$",
    r"^problem id$", r"^framework id$", r"^tension id$",
    r"^capability id$", r"^layer id$", r"^pattern id$",
    r"^comp id$", r"^type id$",
)
ID_HEADER_REGEX = re.compile("|".join(ID_HEADER_PATTERNS), re.IGNORECASE)


def parse_frontmatter(text):
    m = FRONTMATTER_RE.match(text)
    if not m:
        return None, text
    fm_text = m.group(1)
    body = text[m.end():]
    if HAS_YAML:
        try:
            fm = yaml.safe_load(fm_text)
        except yaml.YAMLError as e:
            print(f"  YAML parse warning: {e}")
            fm = {"_raw_frontmatter": fm_text, "_parse_error": str(e)}
    else:
        fm = {"_raw_frontmatter": fm_text}
    return fm, body


def parse_headings(body):
    sections = []
    for m in HEADING_RE.finditer(body):
        level = len(m.group(1))
        title = m.group(2).strip()
        anchor = m.group(3)
        if anchor:
            sections.append({"level": level, "title": title, "id": anchor})
    return sections


def parse_inline_yaml_blocks(body):
    blocks = []
    for m in INLINE_YAML_RE.finditer(body):
        raw = m.group(1)
        if HAS_YAML:
            try:
                obj = yaml.safe_load(raw)
                if obj:
                    blocks.append(obj)
            except yaml.YAMLError:
                pass
    return blocks


def parse_tables(body):
    """Extract markdown tables. If first column header contains 'id', emit as records."""
    tables = []
    lines = body.split("\n")
    i = 0
    while i < len(lines):
        line = lines[i].rstrip()
        if not (line.startswith("|") and "|" in line[1:]):
            i += 1
            continue
        # Check if next line is a separator
        if i + 1 >= len(lines):
            i += 1
            continue
        sep = lines[i + 1].rstrip()
        if not TABLE_SEP_RE.match(sep):
            i += 1
            continue
        # Parse header
        headers = [c.strip() for c in line.strip("|").split("|")]
        # Collect rows
        rows = []
        j = i + 2
        while j < len(lines) and lines[j].rstrip().startswith("|"):
            row = [c.strip() for c in lines[j].strip().strip("|").split("|")]
            if len(row) == len(headers):
                rows.append(dict(zip(headers, row)))
            j += 1
        # Decide if this is an ID table
        first_col = headers[0] if headers else ""
        is_id_table = bool(ID_HEADER_REGEX.match(first_col))
        tables.append({
            "headers": headers,
            "is_id_table": is_id_table,
            "row_count": len(rows),
            "rows": rows,
        })
        i = j
    return tables


def grep_inline_ids(body):
    """Find all inline ID references in the body."""
    pattern = re.compile(r"\b((?:PROBLEM|CLAIM|IMPACT|CAP|SRC|FW|TENSION|OPENQ|CAT|COMP|PATTERN|DIFF|ROI|PAIN|BLOCKER|ASK|REV-LAYER|RBP|TRUST|AGENTTYPE)-[A-Z0-9-]+)")
    return sorted(set(pattern.findall(body)))


def grep_cs_tags(body):
    """Find all [CS: X] confidence tags in the body."""
    pattern = re.compile(r"\[CS:\s*([A-Z_]+)[^\]]*\]")
    counts = {}
    for tag in pattern.findall(body):
        counts[tag] = counts.get(tag, 0) + 1
    return counts


def generate_sidecar(md_path):
    text = md_path.read_text()
    frontmatter, body = parse_frontmatter(text)
    out = {
        "_source_md": md_path.name,
        "_generated_by": "_gen_sidecars.py",
        "frontmatter": frontmatter,
        "sections": parse_headings(body),
        "structured_blocks": parse_inline_yaml_blocks(body),
        "tables": parse_tables(body),
        "inline_id_references": grep_inline_ids(body),
        "cs_tag_histogram": grep_cs_tags(body),
    }
    sidecars_dir = md_path.parent / "_sidecars"
    sidecars_dir.mkdir(exist_ok=True)
    json_path = sidecars_dir / (md_path.stem + ".json")
    json_path.write_text(json.dumps(out, indent=2, default=str))
    return json_path


def main():
    targets = []
    if len(sys.argv) > 1:
        targets = [Path(p) for p in sys.argv[1:]]
    else:
        targets = sorted(HERE.glob("*.md"))

    if not targets:
        print("No .md files found.")
        return

    print(f"Generating JSON sidecars for {len(targets)} markdown file(s)...\n")
    for md in targets:
        if md.name.startswith("_"):
            continue
        out = generate_sidecar(md)
        size_kb = out.stat().st_size / 1024
        print(f"  {md.name:50s} → {out.name:50s} ({size_kb:.1f} KB)")
    print("\nDone.")


if __name__ == "__main__":
    main()
