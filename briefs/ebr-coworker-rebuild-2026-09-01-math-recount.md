# Math recount — ebr-coworker-rebuild-2026-09-01.brief.md

Method: manual line-by-line tally of every [R]/[D]/[A]/[?] tag in the brief body (frontmatter tags not counted). Manual, not `grep -o` — spec is read-only and cannot run shell commands against its own output before the orchestrator writes it to disk. Noted as method, not presented as machine-verified.

**Update note (2026-09-01, post-Beth-review):** two items counted as [?] in the original tally were resolved by Beth's direct decision before this file was written to disk — the Runbooks-screen shell question (resolved: graft into existing nav) and the role-play-simulator.html treatment (resolved: keep linked, label "not MVP"). Both move from [?] to [A] (authorial decision, now made). The visual-system item was also corrected (Apex 2.0 default, not Will's literal Figma skin) but was already tagged [A] in the original pass, so the tag doesn't move — only its content changed. Counts below reflect the post-correction state; this was not re-derived by a fresh line-by-line pass of the corrected brief text, so treat the totals as directionally accurate, not independently re-verified against the final file. A fresh grep/count pass against the actual shipped brief is warranted before quoting this ratio in a handoff.

## [R] — Research/verified-against-source (23)
1. RunbookVersion nine-field schema, verified against schemas.py:63-75
2. Coworker has no runbook_id; assignment is an in-memory stub (ports.py:52-84, agents/models.py:24-57)
3. Risk stored but no guardrail enforcement wired (NONGOAL-005, 002 spec)
4. SRC-U-009 (Craig/Technica) grounds the EBR practice problem
5. Stefanie translate-formula grounds the Translate step
6. Honesty-badge requirement ties directly to the verified in-memory-stub fact
7. Verification steps taken directly from plan's Verification section
8. Run-cycle step order/definitions sourced from RUNBOOK.md + runbook draft intent field
9. Translate step two-register/no-graphs rule (Must 1)
10. Deliver step / output contract (dashboard vs. write-back, RA-018)
11. Liability & state-of-union combined step (runbook draft intent steps 6-7)
12. Runbooks list pane field/pill pattern (Figma frame detail)
13. Runbooks details pane structure incl. lock-vs-edit-icon logic (Figma frame detail)
14. State signal: Locked (whole-record)
15. State signal: Locked (section-scoped)
16. State signal: No permission to unlock
17. State signal: Active/Inactive
18. State signal: Clone (kebab menu, don't invent unlabeled rows)
19. Honesty badge copy, verbatim, given by plan
20. Honesty badge site 3 ties directly to verified backend fact
21. Explicit exclusion of badge from Activate gate (real, different behavior)
22. Ownership (platform/tenant) encoded via lock-icon-vs-edit-icon chrome
23. DESIGN-REFS.md's HARNESS-vs-console.html IA argument still holds

## [D] — Data/direct file-diff or file-existence check (13)
1. Prior build (005-arc) flattened setup flow to match eng placeholder UI (audit finding)
2. Prototype-history audit's specific missing-content findings
3. grep check target string is directly executable/testable
4. Setup screens 1/4/5 confirmed present in 005-arc, unchanged
5. Capstone diff screen confirmed present in build-ebr.html, confirmed missing from ebr-app.html
6. 9-step vocabulary confirmed zero-hits in current ebr-app.html dashboard
7. Chooser UI port source named explicitly (test-chooser-screen.html)
8. Current "not in this demo" toast confirmed present on Coworkers list
9. Teach-back confirmed "thinner/relocated" by audit
10. role-play-simulator.html's orphaning diagnosed as integration failure
11. console.html invented nav vs. real HARNESS screenshot (direct comparison)
12. Two-persona-as-main-flow correctly-cut finding (audit finding)
13. onboarding.html's primitives grid/intent-tier table confirmed present in 004, absent after

## [A] — Assumed/authorial decision, not independently sourced (21, +2 from resolved [?] items)
1. "Microsoft Bob demotion" framing is Beth's evaluative diagnosis
2. David's exact 8 tabs/opening move/gap-logic remain ⟨VERIFY⟩, unresolved
3. Risk level high vs. medium unresolved, Beth's call
4. Plan's screen inventory is a design decision, not a research finding
5. Mission-fit framing (Zero Vector honesty) is this brief's framing, not a tracked OKR
6. Honesty badge added at Connect AI (site 2) — plan decision
7. Setup screen 6 becomes secondary dashboard tab — plan decision
8. Delta view (run-cycle step 2) becomes default landing tab — plan decision
9. Judge-the-8-tabs step ⟨VERIFY⟩ carried forward unresolved
10. Getting-business implemented as Chooser sub-filter, not separate screen — plan decision
11. **Runbooks screen grafts into existing nav** — resolved by Beth, moved from [?]
12. Seed-data fictional author name required; specific name not yet chosen
13. Badge site 1 replacement-of-toast is a new-work decision
14. Badge site 2 placement (Connect AI) — plan decision
15. DESIGN-REFS.md update is a flagged process note, not yet executed
16. Single unified SPA extending ebr-app.html — plan decision
17. landing.html and md-coworker/ stay separate — plan decision
18. Retired-file list (4 files) archived not deleted — plan decision
19. **role-play-simulator.html kept linked, labeled "not MVP"** — resolved by Beth, moved from [?]
20. Visual system = Apex 2.0 default, Itten reserved — corrected content, was already [A]
21. Vision-framing copy is new writing, not a port — corrected framing, was already [A] under "restore"

## [?] — Unknown/unresolved, not yet determined (9, -2 from resolved items)
1. No formal OKR/KR exists for this prototype
2. Who signs off on ⟨VERIFY⟩ copy slots before shipping as provisional
3. Whether critic's post-build scorecard names honesty-badge 3-site coverage explicitly
4. Exact current S.* state names for "Read it"/"Sources" merge
5. Exact two-column field mapping for capstone diff screen
6. 8-visible-stops vs. "9-step" naming mismatch, not resolved either way
7. Chooser-output-to-client-report data-binding not specified
8. EBR-review primitive definition and its mapping to Vertesia (routed to handoff thread)
9. Whether/when Coworker↔Runbook assignment becomes real (roadmap question)

## Totals and ratios (post-correction, directional)
- Total tagged claims: 66
- [R]: 23 / 66 = 34.8%
- [D]: 13 / 66 = 19.7%
- [A]: 21 / 66 = 31.8%
- [?]: 9 / 66 = 13.6%
- [A]+[?] combined: 30 / 66 = **45.5%** — unchanged in aggregate (two items moved from [?] to [A], not out of the combined total) — still exceeds the 30% threshold.

## Reading the ratio
Resolving the Runbooks-shell and role-play-simulator questions didn't lower the [A]+[?] share — it just reclassified two items from open-question to made-decision. That's the expected effect of a review pass: real ambiguity (David's judgment, the roadmap question on Coworker↔Runbook) doesn't shrink because two unrelated build-mechanics questions got answered. The composition argument from the original tally still holds: the non-R/D share is dominated by authorial decisions and honestly-named open questions, not fabricated or padded claims.
