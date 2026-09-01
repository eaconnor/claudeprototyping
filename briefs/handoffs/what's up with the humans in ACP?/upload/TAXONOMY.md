---
doc_id: HANDOFF-TAXONOMY
title: ID Taxonomy & Schema Reference
version: 0.2.0
status: Hybrid · Pattern Applied
date: 2026-06-05
purpose: Master ID schema for the ACP market analysis handoff package
---

# Handoff Package ID Taxonomy

Every document in this handoff uses stable IDs so humans and agents can reference content unambiguously. This file is the schema.

---

## ID Prefix Map {#ID-PREFIXES}

| Prefix | Meaning | Example | Where to find |
|---|---|---|---|
| `HANDOFF-*` | Document IDs | `HANDOFF-PROBLEMS-RANKED` | YAML `doc_id` field at top of each doc |
| `PROBLEM-NNN` | MSP/end-user problems | `PROBLEM-001` | `problems-ranked.md` |
| `CLAIM-*` | Discrete factual claims | `CLAIM-001-A`, `CLAIM-MATH-DISPUTED-001` | Inside claim tables |
| `IMPACT-NNN` | Impact estimates | `IMPACT-002` | Inside problem records |
| `CAP-*` | N-able capabilities | `CAP-ADLUMIN-MDR`, `CAP-CAT-MIP` | Inside problem capability tables |
| `SRC-*` | Source citations | `SRC-001`, `SRC-NICOLE-001` | YAML `sources` field |
| `FW-*` | Council frameworks | `FW-JTBD`, `FW-WARDLEY` | `council-report.md`, `council-report-extended.md` |
| `TENSION-*` | Cross-framework / strategic tensions | `TENSION-AUG-VS-REPLACE` | Multiple docs |
| `OPENQ-*` | Open questions (research gaps) | `OPENQ-VENDOR-AGENT-GOVERNANCE` | `acp-vision-from-pdfs.md` |
| `CAT-*` | Competitor categories | `CAT-DIRECT-MSP`, `CAT-AI-INFRA` | `competitive-landscape.md` |
| `COMP-*` | Specific competitors | `COMP-NINJAONE`, `COMP-PIA-KASEYA` | `competitive-landscape.md` |
| `PATTERN-*` | Cross-vendor patterns | `PATTERN-MCP-CONVERGENCE` | `competitive-landscape.md` |
| `DIFF-*` | Category differentiators | `DIFF-AI-INFRA` | `competitive-landscape.md` |
| `ROI-*` | ROI evidence buckets | `ROI-QBR`, `ROI-ASSETS` | `primary-research-transcripts.md` |
| `PAIN-*` | Pain consensus signals | `PAIN-LICENSE`, `PAIN-PATCHING` | `primary-research-transcripts.md` |
| `BLOCKER-*` | Friction / data gaps | `BLOCKER-DATA-ACCURACY` | `primary-research-transcripts.md` |
| `ASK-*` | Platform capability asks | `ASK-MCP` | `primary-research-transcripts.md` |
| `REV-LAYER-N` | Revenue layer | `REV-LAYER-2` | `acp-vision-from-pdfs.md` |
| `RBP-*` | Runbook principles | `RBP-DETERMINISTIC-ISH` | `acp-vision-from-pdfs.md` |
| `TRUST-*` | Trust execution levels | `TRUST-AUTONOMOUS` | `acp-vision-from-pdfs.md` |
| `AGENTTYPE-*` | Agent types | `AGENTTYPE-EXPERT` | `acp-vision-from-pdfs.md` |

---

## Cross-doc reference syntax {#CROSS-REF}

To reference content in another doc:

```
<DOC-ID>#<ANCHOR-ID>
```

**Examples:**
- `HANDOFF-PROBLEMS-RANKED#PROBLEM-001` — Problem 1 in problems-ranked.md
- `HANDOFF-ACP-VISION-PDFS#REV-LAYER-7` — Outcome-based pricing layer in Nicole's vision
- `HANDOFF-COMPETITIVE-LANDSCAPE#PATTERN-MCP-CONVERGENCE` — MCP convergence pattern

---

## Confidence Score (CS) tag enum {#CS-ENUM}

| Value | Meaning | Verification action |
|---|---|---|
| `VERIFIED` | Matches primary source directly accessed | None — already verified |
| `HIGH` | Well-sourced secondary; not primary-verified | Verify before public quoting |
| `MEDIUM` | Plausible with partial sourcing | Always verify before action |
| `LOW` | Fluent but thin sourcing | Treat as unverified |
| `UNKNOWN` | Outside model knowledge; needs SME | Escalate to domain expert |
| `FABRICATION_RISK` | Model likely hallucinated | Discard |
| `LOW_OUTSIDE_TRAINING` | Beyond knowledge cutoff | Verify currency |

See `CS-TAGS.md` for the human-readable scale and JSON schema.

---

## Source Tier enum {#SOURCE-TIER-ENUM}

| Tier | Meaning | Treat as |
|---|---|---|
| `primary` | Original research, peer-reviewed, primary data | Authoritative |
| `secondary` | Industry analyst report, trade publication | High confidence with verification |
| `vendor-blog` | Vendor's own product blog | Directional; vendor has incentive |
| `vendor-marketing` | Vendor survey/marketing report (e.g. Heimdal MSP report) | Treat as vendor marketing, not research |
| `press-release` | Press release (e.g. Cat-MIP via Businesswire) | Vendor-distributed; verify claims |
| `nicole-vision` | Nicole Reineke's source PDFs (authoritative for ACP intent) | Authoritative for N-able product direction |

Critic flagged: previously [CS: VERIFIED] was applied to vendor-marketing sources without `source_tier` field. The hybrid pattern surfaces tier explicitly so the inflation is visible.

---

## Severity enum {#SEVERITY-ENUM}

| Value | Meaning |
|---|---|
| `CRITICAL` | Existential / cross-cutting / high impact + high urgency |
| `HIGH` | Significant impact or urgency |
| `MEDIUM` | Notable but bounded |
| `LOW` | Edge case or future concern |

---

## Doc inventory {#DOC-INVENTORY}

| Doc ID | File | Hybrid status | Owner |
|---|---|---|---|
| HANDOFF-README | `README.md` | Light frontmatter only | Beth |
| HANDOFF-TAXONOMY | `TAXONOMY.md` | This doc | Beth |
| HANDOFF-CS-TAGS | `CS-TAGS.md` | Already structured (had JSON schema) | Beth |
| HANDOFF-PROBLEMS-RANKED | `problems-ranked.md` | Full hybrid | Beth |
| HANDOFF-NICOLE-VISION | `nicole-actual-acp-vision.md` | Strategic synthesis (light frontmatter) | Beth |
| HANDOFF-ACP-VISION-PDFS | `acp-vision-from-pdfs.md` | Full hybrid | Beth + Scout |
| HANDOFF-PRIMARY-RESEARCH | `primary-research-transcripts.md` | Full hybrid | Beth + Scout |
| HANDOFF-COMPETITIVE-LANDSCAPE | `competitive-landscape.md` | Full hybrid | Beth + Scout |
| HANDOFF-COUNCIL-REPORT | `council-report.md` | Light frontmatter (5 frameworks) | Beth + Council |
| HANDOFF-COUNCIL-EXTENDED | `council-report-extended.md` | Needs Wardley fix + frontmatter | Beth + Council |
| HANDOFF-ETHNOGRAPHY | `ethnography-ai-headless-cybersecurity.md` | Light frontmatter (Scout output preserved) | Beth + Scout |
| HANDOFF-CRITIC-PASS-1 | `critic-pass-1.md` | Audit artifact; no hybrid | Critic |

---

## Generator script {#GENERATOR}

To regenerate JSON sidecars from any hybrid markdown doc:

```bash
python3 /Users/elizabeth/Desktop/Bethproto/briefs/handoffs/acp-market-analysis-2026-06-05/_gen_sidecars.py
```

The script:
1. Walks every `.md` file in the handoff folder
2. Extracts YAML frontmatter
3. Walks structured fenced blocks (`yaml` blocks inside markdown that carry inline structured data like `claim_id:`)
4. Walks H3+ headings with `{#ID}` anchors → emits as section index
5. Walks markdown tables → if first column header is `ID` or `Claim ID` etc., emits as structured records
6. Writes `<filename>.json` alongside each `.md`

JSON sidecars are derivatives of the markdown. **Don't hand-edit them.** Re-run the generator after editing the markdown.

---

## How to grep this package {#GREP-RECIPES}

```bash
# Find everywhere PROBLEM-001 is referenced
grep -rn "PROBLEM-001" .

# Find all [CS: VERIFIED] claims
grep -rn "\[CS: VERIFIED" .

# Find all FABRICATION_RISK or LOW confidence claims
grep -rnE "\[CS: (LOW|FABRICATION_RISK)" .

# Find all TENSION-* references across docs (where do contradictions show up?)
grep -rn "TENSION-" .

# Find all OPENQ-* (research gaps)
grep -rn "OPENQ-" .

# List all source IDs in use
grep -rhoE "SRC-[A-Z0-9-]+" . | sort -u

# Find every reference to the disputed math
grep -rn "CLAIM-MATH-DISPUTED" .

# Find all vendor-marketing tier sources (the critic flag)
grep -rn "source_tier: vendor-marketing" .
```

---

**Read order for first-time recipients:** `README.md` → this file → `nicole-actual-acp-vision.md` → `acp-vision-from-pdfs.md` → `problems-ranked.md` → `primary-research-transcripts.md` → `competitive-landscape.md` → council reports → `critic-pass-1.md`.
