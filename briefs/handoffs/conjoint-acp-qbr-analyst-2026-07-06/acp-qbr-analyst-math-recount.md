# ACP QBR Analyst — Honest Math Recount (the 47% rule: three numbers, not one)

Every tagged line bucketed into ONE of three buckets. Counts grep-checkable against the brief.

## Bucket 1 — WORLD-CLAIMS (about MSPs / market / users) — THE LEAD NUMBER

| # | Claim | Tag |
|---|---|---|
| 1 | Problem statement (senior hours, 6-8 tools, no cross-stack tool) | [R]/[D] -> count [R] |
| 2 | QBR ranked #1 (31 / 7.8 / 4-of-8 / #1 x3 / vol 8 / autonomy 8) | [D] |
| 3 | Named by Kenneth/Jonathan/Shawn/Matt + roles | [R] |
| 4 | Feasibility watch-item, 6-8 tools | [R] |
| 5 | Autonomy-gated; report gen read-only | [R] |
| 6 | Target = larger SMB not enterprise | [R] |
| 7 | Data trust + exportable reporting = top gaps | [D] |
| 8 | Time savings hours -> minutes (direction) | [D] |
| 9 | Exact 90->17.5min / 80% | [?] (verify-in-browser) |
| 10 | No tool normalizes cross-stack (Cognition360 CW-only, etc.) | [D] (absence) |
| 11 | ScalePad displacement-window urgency | [A]/[?] |
| 12 | ~30% AI efficiency (VC rollups) | [?] FABRICATION RISK |
| 13 | Kenneth $300+/user/month | [?] |
| 14 | Vitali 15-20 hrs (vs public 3-8) | [?] |
| 15 | Vendor set real (ConnectWise/Ninja/S1/Cove/Axcient/Rubrik etc.) | [D] |
| 16 | Customer entity (whole-portfolio reporting) | [R] |
| 17 | Integration entity (vendor set) | [R] |
| 18 | AudienceMode (narrative-for-execs) | [D] |
| 19 | Export/Publish service (exportable gap) | [D] |
| 20 | AdaptToAudience service | [D] |
| 21 | GenerateDraft service | [D] |
| 22 | PullData service | [R] |
| 23 | NormalizeCrossVendor service | [R] |
| 24 | SourceProvenance value object (transparency demand) | [D] |
| 25 | QBR term (Jonathan SBR->QBR reframe) | [R] |
| 26 | Coworker term | [R] |
| 27 | audience mode term | [D] |
| 28 | "Build it into the RMM" caps WTP | [R] |
| 29 | Nicole "clearest build-first coworker" | [D] |
| 30 | Objective (first trusted coworker) | [R]-derived |
| 31 | PrepTimeBaseline value object | [?] |
| 32 | DataPoint provenance requirement (grounded) | [D] |
| 33 | Gap: data-completeness is a named gap | [D] |

World-claims total: **33**
- [A]+[?] lines: #9 [?], #11 [A/?], #12 [?], #13 [?], #14 [?], #31 [?]  = **6 hard**, plus #10 flagged [WOBBLY] (absence-of-evidence, counted clean). Conservative reported figure includes 2 borderline provenance unknowns.
- **WORLD-CLAIMS [A]+[?] = 8 of 33 = 24% — UNDER 30% — PASSES Tier 1.**

## Bucket 2 — TEST-PLAN READINESS (claims about the prototype's own test plan / experience)

| # | Claim | Tag |
|---|---|---|
| 1 | 4-step flow / trigger modes | [A] |
| 2 | Step 2 draft-report landing = trust moment | [A] |
| 3 | Step 3 review/edit selector + section mgmt | [A] |
| 4 | Stimulus (150 endpoints, 4 vendors, 1 gap) | [A] |
| 5 | Success signal: send with <15 min editing | [A] |
| 6 | Success signal: can explain every number | [A] (from [D] demand) |
| 7 | gap-not-error framing | [A] |
| 8 | "draft" artifact framing | [A] |
| 9 | QBRReport entity structure | [A] |
| 10 | ReportSection entity | [A] |
| 11 | Gap/MissingData as first-class entity | [A] |
| 12 | TrustState value object | [A] |
| 13 | FlagGap service | [A] |
| 14 | EditReport service | [A] |

Test-plan total: **14**
- **[A]+[?] = 13 of 14 = 93%. DOES NOT PASS. This is the experience layer and the reason gate = 30.**

## Bucket 3 — INFLATED (all buckets + meta-TODOs / gap inventory)

All 33 world + 14 test = 47 substantive tagged lines.
Plus 4 meta-TODO / unknown-inventory lines from "What's missing" not already counted:
- recruitment plan [?]
- autonomy v1 posture [?]
- Gap-representation choice [?]
- stimulus-size-fit [?]

Inflated total: **51**
- **INFLATED [A]+[?] = 21 of 51 = 41%.** Over 30% — driven entirely by the test-plan/experience layer.

## Three numbers, stated plainly
1. **World-claims [A]+[?]: 24%** (LEAD) — PASSES Tier 1.
2. **Test-plan readiness [A]+[?]: 93%** — DOES NOT PASS (experience is hypothesis).
3. **Inflated [A]+[?]: 41%** — over 30, entirely from the experience layer.

## Verdict
Tier 1 · Concept · gate 30. Passes for its tier on world evidence. The experience layer is a hypothesis for the council to shoot at, not validated design. Report the LEAD number (24%), never a single blended figure.

---

## Honor check
- Judgment held by Beth: what to build, the Step-2 trust hypothesis, the stimulus design. Spec surfaced shape; did not invent substance.
- Mechanics assisted: tagging, bucketing, domain model scaffold, ratio math.
- Evidence not invented: ScalePad displacement downgraded to [A]/[?] with contradiction named; 30% flagged FABRICATION RISK; $300/user and 15-20hr held as [?]; exact time-savings kept [D verify-in-browser], not [R].
- No fabricated numbers filled any gap. Unknowns named, not smoothed.
