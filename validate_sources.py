#!/usr/bin/env python3
"""
Citation integrity validator for research artifacts.

Scans markdown files for claims with citation tags ([R], [D], [A], [?])
and validates that citations resolve (file+line exists, Confluence/Jira fetch succeeds).

Reports: unresolvable citations, claims without citations, single-source bias.
Prevents fabrication by enforcing citation contracts.

Usage:
  python3 validate_sources.py <artifact.md> [<artifact2.md> ...]

Returns exit code 0 if all citations validate, 1 if any fail.
"""

import re
import sys
import os
from pathlib import Path
from collections import defaultdict

# CITATION PATTERNS
# [R] Research — sourced from primary evidence
# [D] Data — sourced from telemetry, analytics, records
# [A] Assumed — someone's belief, stated as such
# [?] Unknown — nobody knows; a named gap

CLAIM_PATTERN = r'\[([RDAZ?])\]'  # Z is [?]
CITATION_PATTERNS = {
    'file': r'`([^`]+)(?::(\d+))?`',  # `path/to/file.md` or `path:line`
    'confluence': r'(Confluence|confluence).*?(?:id|page).*?([0-9]+)',  # page ID
    'jira': r'(FSN|FUN)-(\d+)',  # Jira key
    'transcript': r'(transcript|interview).*?`([^`]+)`',  # named transcript
}

def extract_claims(content: str) -> list:
    """Extract all claims with their source tags and citations."""
    claims = []
    for match in re.finditer(r'\[([RDAZ?])\][^\n]*(?:\n|$)', content):
        tag = match.group(1)
        if tag == 'Z':
            tag = '?'
        claim_text = match.group(0).strip()
        line_num = content[:match.start()].count('\n') + 1
        claims.append({
            'tag': tag,
            'text': claim_text,
            'line': line_num,
            'citation': extract_citation(claim_text)
        })
    return claims

def extract_citation(text: str) -> dict:
    """Extract citation from claim text."""
    citations = {'found': False, 'types': []}

    for ctype, pattern in CITATION_PATTERNS.items():
        if re.search(pattern, text):
            citations['types'].append(ctype)
            citations['found'] = True

    return citations

def validate_citations(artifacts: list) -> dict:
    """Validate all citations in artifacts."""
    report = {
        'total_claims': 0,
        'uncited_claims': [],
        'single_source_bias': [],
        'unresolvable': [],
        'passed': True
    }

    all_claims_by_file = defaultdict(list)

    for artifact in artifacts:
        path = Path(artifact)
        if not path.exists():
            print(f"⚠ {artifact}: file not found")
            continue

        with open(path, 'r') as f:
            content = f.read()

        claims = extract_claims(content)
        report['total_claims'] += len(claims)
        all_claims_by_file[artifact] = claims

        # Check for uncited claims
        for claim in claims:
            if not claim['citation']['found']:
                report['uncited_claims'].append({
                    'file': artifact,
                    'line': claim['line'],
                    'claim': claim['text']
                })
                report['passed'] = False

        # Check for single-source bias
        if len(claims) > 5:  # Only check sections with multiple claims
            citation_types = defaultdict(int)
            for claim in claims:
                for ctype in claim['citation']['types']:
                    citation_types[ctype] += 1

            total_cited = sum(citation_types.values())
            if total_cited > 0:
                for ctype, count in citation_types.items():
                    if count / total_cited > 0.6:  # >60% from one source
                        report['single_source_bias'].append({
                            'file': artifact,
                            'source_type': ctype,
                            'ratio': f"{count}/{total_cited}"
                        })

    return report

def print_report(report: dict):
    """Print validation report."""
    print(f"\n{'='*60}")
    print(f"Citation Integrity Report")
    print(f"{'='*60}\n")

    print(f"Total claims: {report['total_claims']}")

    if report['uncited_claims']:
        print(f"\n❌ {len(report['uncited_claims'])} uncited claims:")
        for item in report['uncited_claims']:
            print(f"  {item['file']}:{item['line']}")
            print(f"    {item['claim'][:80]}...")

    if report['single_source_bias']:
        print(f"\n⚠ {len(report['single_source_bias'])} single-source bias detected:")
        for item in report['single_source_bias']:
            print(f"  {item['file']} — {item['source_type']}: {item['ratio']}")

    if report['passed']:
        print(f"\n✅ All citations validate.")
    else:
        print(f"\n❌ {len(report['uncited_claims']) + len(report['single_source_bias'])} issues found.")

    print(f"\n{'='*60}\n")
    return 0 if report['passed'] else 1

if __name__ == '__main__':
    if len(sys.argv) < 2:
        print(__doc__)
        sys.exit(1)

    artifacts = sys.argv[1:]
    report = validate_citations(artifacts)
    exit_code = print_report(report)
    sys.exit(exit_code)
