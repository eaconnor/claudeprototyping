---
artifact: "n-able Strategy Context (placeholder)"
type: "build dependency"
status: "v0 placeholder — to be loaded with live n-able strategy doc by build"
owner: "Beth (to source from n-able strategic planning)"
referenced_by: ["briefs/idea-chorus-rubric-v2-spec.brief.md — Decision 10, Decision 9 Patch C"]
---

# n-able Strategy Context

This artifact holds the n-able company strategy / KPIs that the Idea Chorus rubric uses for two operations:

1. **Charter Traversal Chain** (Decision 10) — Bradley walks the chain from brief Charter up to company strategy and then to market signals. This file is the company-strategy rung.
2. **Company-fit clash rule** (Decision 9 Patch C, Rule #9) — Bradley checks each Charter's Defining Statements against the strategy stated here.

## Structure (when loaded)

The live document should provide:

### Strategic Objectives (current FY)
- One-line per objective
- Force level: Must / Should / Ought to
- Citation: which exec / planning doc / quarterly review this came from
- [CS:] tag

### KPIs
- Quantitative measures tied to each objective
- Owner
- Reporting cadence
- Current status

### Market Signal Citations
- What outside-world evidence supports each Strategic Objective
- Sources (analyst reports, customer research, competitive intelligence, partner feedback)
- [CS:] tag per citation

## v0 placeholder content (to be replaced)

This file currently contains no live strategy. The build agent should not produce a Company-fit clash judgment using placeholder content. Until this file is loaded with live n-able strategy:

- Bradley returns MEDIUM-severity Company-fit clash with message: *"I don't have n-able's strategy loaded. I can't tell you if your Charter is on-strategy or off-strategy. Get the strategy doc loaded into this artifact before the next council session."*
- Charter Traversal Chain rung for Company Strategy displays as **grey** (not applicable / unloaded).

## Loading instructions for build

1. Identify the live n-able FY27 strategy document (or current FY equivalent).
2. Extract Strategic Objectives, KPIs, and Market Signal Citations into the structure above.
3. Add [CS:] tags per claim.
4. Update this file's `status` field to `live` and remove the v0 placeholder warning.
5. Re-run any Idea Chorus session that previously returned MEDIUM Company-fit clashes due to unloaded strategy.

---

*Created as placeholder: 2026-05-21*
*Parent brief: briefs/idea-chorus-rubric-v2-spec.brief.md*
