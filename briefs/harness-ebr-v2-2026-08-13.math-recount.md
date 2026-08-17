# Math Recount — harness-ebr-v2-2026-08-13

**Generated:** 2026-08-13
**Brief file:** briefs/harness-ebr-v2-2026-08-13.brief.md
**Method:** Every tagged claim in the brief bucketed by tag. KIT table counted one tag per row (PICKED FROM column determines the row tag; GOOD FOR column carries a standing table-level [A] counted once, not per row). "What's Missing" items counted as [?] claims. Failure modes are narrative — they reference already-counted tagged claims; not double-counted.

---

## Tag Counts by Section

### Gate 1 — Problem
| Tag | Claims |
|-----|--------|
| [R] | 18 — transport mechanism quote; EBR continuity quote; Craig 3h estimate; David 1.5–2h estimate; standing acceptances quote; cycle-memory quote ("not utilising AI"); David in 100% of EBRs; business case 80%→50%; liability shield quote; N-central; Inforcer; uSecure; HaloPSA; Cloud Capsule; M365/Intune; Rewst [CS: MEDIUM]; NCSC 10 Steps; Cyber Essentials |
| [A] | 1 — gap between owner-estimate and practitioner-estimate is the finding (Beth's interpretive framing) |
| [?] | 3 — generalizability beyond Technica Solutions; David time estimate generalizable?; 8-tab template sector-standard? |
| [D] | 0 |
| **Section total** | **22** |

### Gate 2 — Right thing
| Tag | Claims |
|-----|--------|
| [R] | 2 — practitioner prep time as outcome (from interview); business case 80%→50% (SRC-U-009) |
| [D] | 1 — Product System: gateway generic (code-verified in repo) |
| [A] | 5 — kitting mission fit; Process strong; Service strong; Product Performance strong; Customer Engagement option 2 only |
| [?] | 4 — financial value not calculated; generalization not validated; Channel undecided; Structure nobody named |
| **Section total** | **12** |

### Gate 3 — Built right
| Tag | Claims |
|-----|--------|
| [R] | 1 — Stage 5 David frontstage (from interview) |
| [D] | 1 — FSN-82692 FTUX flow spec |
| [A] | 9 — Stage 1 portfolio preview; Stage 2 nudge logic; Stage 3 PICKING sequence; Stage 4 inversion; Stage 6 signature configurable; "cannot tell" surfaceable; per-part staleness; cycle memory diff; Stage 4 "sharpie deck" framing |
| [?] | 4 — testing plan; success criteria; test participants; validation session |
| **Section total** | **15** |

### 7-Stage Axis table
| Tag | Claims |
|-----|--------|
| [R] | 1 — Stage 5 David frontstage |
| [D] | 1 — Stage 0 FSN-82692 spec |
| [A] | 5 — Stages 1, 2, 3, 4, 6 |
| [?] | 0 |
| **Section total** | **7** |

### KIT Table — PICKED FROM column (28 rows)
| Tag | Parts |
|-----|-------|
| [R] | 16 — Parts 1, 2, 3, 4, 5, 6, 7, 9, 10, 11, 12, 15, 16, 17, 18, 25 |
| [A] | 9 — Parts 8, 13, 20, 21, 22, 23, 24, 26, 28 |
| [?] | 3 — Parts 14, 19, 27 |
| [D] | 0 |
| **Section total** | **28** |

KIT table GOOD FOR column: standing table-level [A] — counted as **1** [A] claim (not 28).

### What's Missing (9 items, all [?])
| Tag | Items |
|-----|-------|
| [?] | 9 — Big Map JSON missing; second interview; testing plan; financial value; channel infrastructure; Customer Engagement 3/4; structure owner; Runbooks and AI Experts; liability-shield tone model |
| **Section total** | **9** |

---

## Grand Totals

> **47% RULE CORRECTION — self-reported count did not match grep.** The section-by-section tally above (manually summed to 94) was spec's self-report. Running `grep -o '\[R\]' brief.md | wc -l` etc. against the written brief file gives different, higher counts across every tag. Grep is authoritative. Corrected totals below replace the self-reported ones. This is the exact failure mode CLAUDE.md names — spec once self-reported 47%, grep showed 80%. Fluency does not know its own math.

**Grep-verified (2026-08-13, against briefs/harness-ebr-v2-2026-08-13.brief.md):**

| Tag | Self-reported | Grep-verified |
|-----|---------------|---------------|
| [R] | 38 | **39** |
| [D] | 3 | **3** |
| [A] | 30 | **36** |
| [?] | 23 | **27** |
| **Total** | **94** | **105** |

### Ratios (grep-verified)

| Tag | Count | Percentage |
|-----|-------|-----------|
| [R] | 39 | 37.1% |
| [D] | 3 | 2.9% |
| [A] | 36 | 34.3% |
| [?] | 27 | 25.7% |
| **[A]+[?] combined** | **63** | **60.0%** |

The gap between the self-reported [A]+[?] figure (56.4%) and the grep-verified figure (60.0%) does not change the verdict — both fail the 30% threshold — but the self-report undercounted by 11 tags out of 105 (~10 points of ratio). Named per the 47% rule: verify before you quote either number downstream.

---

## Readiness Verdict

**FAIL on ratio.** [A]+[?] = 60.0% grep-verified (56.4% self-reported), exceeding the 30% threshold either way.

**Named at top of brief.** This is not an oversight — it is flagged explicitly.

**Inflation sources:**
1. KIT table: 9 [A] PICKED FROM rows — designed approaches where no connector exists. These are knowable gaps, not invented claims.
2. Gate 3: 9 [A] design decisions from Beth's blueprint annotations — designed but not validated.
3. What's Missing: 9 [?] items — explicit unknowns named honestly.

**Authorization:** Beth has set `confidence_regime: PROCEED-FLAGGED`. This is her explicit permission to build on imperfect evidence without claiming validation. The ratio is named; the call is made.

---

## KIT Parts Count

**Total parts in KIT:** 28 (verified by row count from FigJam section 259:1670)

**SHORTs (parts that cannot be assembled from available tooling):** 4

| Part | Name | Why SHORT |
|------|------|-----------|
| 8 | Temporary exclusions nobody put back | Shared notebook does not exist; diff against last cycle impossible |
| 13 | End-of-support firmware, network kit, unmanaged offices | Manufacturer end-of-support dates not in any connected tool; manual lookup required |
| 14 | Anything that went wrong this quarter, and why | No source exists today; requires Incident Response Analyst writing into a notebook that does not exist |
| 27 | Open commitments from last cycle | Shared notebook for persistent judgments does not exist; no diff, no commitment closure |

---

## Verified Stats (47% Rule)

Every stat cited in the brief listed below with source trace. Stats that require grep-verification against primary source are flagged.

| Stat | Source | Status |
|------|--------|--------|
| "3h total prep" | SRC-U-009, Craig Fisher, 2026-08-07 | **Verify exact figure against datadump-refresh-2026-08-12.md before quoting downstream** |
| "1.5–2h David's portion" | SRC-U-009, Craig Fisher, 2026-08-07 | **Verify exact figure against datadump-refresh-2026-08-12.md before quoting downstream** |
| "80%→50% time on EBRs" | SRC-U-009 per datadump summary | **Verify exact figures against datadump-refresh-2026-08-12.md before quoting downstream** |
| "Most clients sit at 5" (Inforcer 1–9 scale) | SRC-U-009, Craig Fisher | **Verify exact phrasing against datadump-refresh-2026-08-12.md** |
| "Ideal client is 5" | SRC-U-009 | **Verify against source** |
| "51m55s interview" | SRC-U-009 header in datadump-refresh-2026-08-12.md | Verify interview duration in source header |
| "28 parts" | KIT FigJam, section 259:1670, counted by rows above | Counted — 28 confirmed |
| "4 SHORTs" | Parts 8, 13, 14, 27 in KIT FigJam | Verified — 4 rows tagged SHORT in KIT source |
| "8 tabs" | punch-list-hifi.md PRIME resolution, 2026-08-07 | Verified — punch-list names all 8 tabs explicitly |
| "n=1" | SRC-U-009 — one interview participant (Craig Fisher) | Verified — single session, single participant |
| "20-minute onboarding flow" | FSN-82692 per blueprint §14 | Verify exact duration in FSN-82692 spec document |
| "[A]+[?] = 56.4%" | Calculated from tag count above | Recalculate by grep count of [A] and [?] tags in brief file before quoting |
| "38 [R] claims" | Counted in this recount | Verify by grep: `grep -o '\[R\]' brief.md \| wc -l` |
| "30 [A] claims" | Counted in this recount | Verify by grep: `grep -o '\[A\]' brief.md \| wc -l` |
| "23 [?] claims" | Counted in this recount | Verify by grep: `grep -o '\[?\]' brief.md \| wc -l` |

**Note on the three prep-time figures (3h / 1.5–2h / 80%→50%):** These are the brief's most load-bearing stats. They appear in the problem statement, the OKR key result, and the business case. All three must be grep-verified against the datadump primary source before any downstream artifact quotes them. The gap between the 3h and 1.5–2h figures IS the finding — getting either number wrong collapses the argument.
