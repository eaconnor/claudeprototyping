# Chores — annoying things to learn / set up

*The Friday-morning list. A recurring routine surfaces this every Friday; work an item or two, check it off, add new ones as they come up. Small annoying setup/learning tasks that never make it into "real work" go here so they stop falling through.*

**How it works:** a scheduled routine (Friday mornings) reads this file, surfaces the open items, attempts any it can do unattended, and nudges Beth on the rest. Nothing gets checked off unless it's verified.

---

## Open

### From Insights Report (2026-08-13) — Automation & Process Discipline

- [x] **Define prototype acceptance rubric.** — 2026-08-14. Tabled. Not a thing.

- [x] **Define citation contract format.** — 2026-08-14. Tabled. Whole project tabled.

- [x] **Decide datadump automation scope.** — 2026-08-14. Decisions: (1) Schedule = Friday 9am, same slot as chores runner. (2) Mechanical items tagged — ACP→Harness rename is the only qualifying open item. (3) Confluence write strategy = Conservative (1 page at a time), bump to Balanced after two clean runs.

---

### Existing Open Items

- [ ] **ACP → Harness rename across prototypes and product-facing copy.** `[mechanical]`
  - *Why:* 2026-08-07, Beth: "ACP is now Harness." This widens the earlier 2026-07-31 call (which read as QBR-surface-only — see `project_nable_harness_naming` memory) to the platform name itself. Existing prototypes still say "ACP" throughout their UI chrome and copy — `prototypes/qbr-draft-flow/qbr-hifi.html` (built 2026-08-07, same day as the rename call) uses "ACP" repeatedly (onboarding copy, side-nav footnote, Bradley-rail routing cards), `prototypes/qbr-triage-apex.html` likely does too, and there are probably more across the prototype corpus.
  - *What NOT to touch:* spec citations quoting the real `acp-core-main-3`/`acp-core-main` repo (FSN-83143, FSN-82692, `specs/004-ai-coworker-registry`, etc.) — those say ACP because that's what the actual source says. Only this project's own product-facing prototype copy renames; cited spec text keeps its original name with the naming divergence noted, same pattern already used for QBR Advisor vs. QBR Analyst vs. Harness.
  - *Action:* grep prototypes/ and briefs/ for "ACP" in product-facing (non-citation) copy, rename to Harness, verify in browser. Not urgent — no user-facing deadline named — but real rework debt building up with each new prototype shipped under the old name.

- [ ] **Get live GitHub access to `nable-fusion/acp-core`.**
  - *Why:* so the vision / Idea Chess work can test the **live** ACP spec instead of the static `acp-core-main-3/` download. Freshness only — not blocking; the static copy is recent and the fleet already tests it.
  - *2026-07-16 progress:* Beth has confirmed real personal GitHub access — she can browse the live repo directly (`github.com/nable-fusion/acp-core`, Internal visibility, 20 branches, active PRs). The repo's own About sidebar lists it as **"Managed by FusionAIScrumTeam@n-able.com"** — that's a concrete contact, better than "find whoever admins the integration."
  - *Still unresolved:* Claude's GitHub connector is authorized on Beth's account but installed only on `logicnow` and `NicoleReinekeNable` — not `nable-fusion` — per Claude's own GitHub app permissions page. A GitHub Desktop clone was in progress but not confirmed complete; whether `nable-fusion` appears in Desktop's repo picker is unresolved (list is long/alphabetical, cut off mid-scroll).
  - *2026-08-17 update:* SSH key (`~/.ssh/id_ed25519`) is now set up and added to Beth's personal GitHub account — used to push `Bethproto` to `eaconnor/claudeprototyping` (private). No `gh` CLI yet. The `nable-fusion` gap is separate — SSH key alone won't grant access to an org repo Beth isn't a member of.
  - *Action:* email/message **FusionAIScrumTeam@n-able.com** and ask them to install the Claude GitHub App on `nable-fusion`, scoped to `acp-core`. This replaces the old "find whoever admins the integration" ask with an actual contact.
  - *Then:* retry the Claude-side connection, or finish the GitHub Desktop clone Beth already started for a live local copy (achieves the underlying "freshness" goal either way, connector or not).
  - *Fallback in use:* `acp-core-main-3/` static download.
  - *2026-07-31 check:* No change. No `gh` CLI, no SSH keys, no credential helpers on this machine. `github.com/nable-fusion/acp-core` returns 404 unauthenticated (private repo, expected). No fresh local clone found under Desktop. Still blocked until FusionAIScrumTeam@n-able.com installs the Claude GitHub App on `nable-fusion`, or Beth completes the GitHub Desktop OAuth clone herself.
  - *2026-08-03 — now has a concrete stake:* today's ux.md/spec-review integration test (`acp-core-main-3/specs/_ux/`, see `PROPOSAL.md`) was built against the static download. If this proposal goes to Nicole, testing it against the **live** repo before or right after sending would catch anything the static snapshot missed (e.g., whether `.claude/workflows/spec-review.js` in the real repo still matches the copy tested here). Raises the value of closing this chore, doesn't change what's blocking it.

- [x] **Won't do — moved off Desktop.** — 2026-08-07. Beth doesn't care. Closed.

- [x] **Terminology cleanup on the 5 published Idea Chess Confluence pages.** — 2026-07-31. All 5 pages retitled ("(full kill-sheet)" → "(full stress-test)") and body prose passed to chess/game vocabulary ("Battleship Day. Job: sink the ship." → "Idea Chess. Job: find where it falls."; "Council kill-pass" → "Council stress-test"; "Kill criterion:" → "Stress-test:"; "Best shot:" → "Best move:"; "The kill, in one paragraph" → "The verdict, in one paragraph"). Offerings A (62180851809) and B (62180917356) had already been updated in this session before the summary point — verified on refetch, no re-work needed. Offerings C (62179377873), D (62179737945), E (62180131345) updated live, version 2 confirmed on each. "battlecard," "beachhead," "adversarial," and canonical-source filenames (murder-board-offering-*.md) left unchanged per scope.

- [x] **Full-datadump abductive research spreadsheet — complete 2026-08-07.** File at `briefs/abductive-corpus-council44-2026-08-07.md` · 402 rows · 14 clusters · 39 source files · **AWAITING BETH'S PASS** — fill Interpretation and Tag columns, then invoke `/abductive-tag` for Claude's deductive columns.
  - *Why:* the QBR/EBR coded-research pass (`briefs/qbr-ebr-coded-research-2026-07-28.md`)
    deliberately scoped itself to 17 files, not the full corpus (87 briefs + 72 `scout_input` ≈
    159 files) — coding at that granularity everywhere is a materially bigger job than any single
    session's task. Bradley's 2026-07-30 gather independently found the same gap from another
    angle: `acp-ux.md` doesn't route into most of the concepting corpus. A full-corpus pass with a
    routing field would fix both.
  - *Proposed shape:* extend the existing `abductive-tag` skill (Beth's Observed/Interpretation/
    Tag columns, Claude's 5 deductive columns) with one new field — **relevant spec/area** — so a
    row can be filtered to "everything touching FSN-83143" or "everything QBR/EBR" without
    re-reading the corpus.
  - *2026-07-30 discussion — outsourcing the extraction layer:* Beth asked whether Claude can do
    a first pass reading all the research and surfacing what looks relevant, before her abductive
    pass. Answer discussed same session: yes, for the **Observed** column specifically (raw datum
    + citation + structural signals — repetition across independent sources, contradiction, hard
    numbers) — that's Scout's job at scale, not an abductive move. The **Interpretation/Tag**
    columns stay Beth's only, per the abductive-tag skill's core rule (never anchor her
    interpretation to Claude's frame by going first). A pre-populated Observed column would let
    Beth abduct over curated candidates instead of re-reading 159 raw files herself.
  - *Not yet scoped:* one pass over everything vs. phased by offering (the way QBR/EBR went
    first). Needs Beth's call before starting — this entry is "put it on the list," not "build it."
  - **Corrected 2026-07-30 — target is Council 44, not the default 5-voice Council.** Beth
    clarified: the gather should prep evidence for **Council 44**
    (`briefs/methods-library-matrix.md` — 44 methods across 14 clusters: CHTR/Charter,
    IIT/Owen-style project & defining statements, STRAT/Moore positioning, Hard Mode force levels,
    etc. — see `briefs/acp-trust-level-council-44.md` for a worked example of the format: Sign /
    Hypothesis / Kill criterion / Force level / Owens / Cannot-see per method), not the simpler
    default-5-voice Council (JTBD/Service Blueprint/SDT/Disruptive Innovation/Value Chain) used on
    QBR/EBR. Same-day attempt at a 5-voice-shaped gather (5 background agents, ACP domain files)
    was stopped mid-run once this correction landed — wrong frame, would have under-prepped for
    the 44-cluster structure. **This whole effort runs as Friday-chores work, not live in-session**
    — re-scope the extraction prompts around the 44 methods/14 clusters before the next attempt.


- [x] **Capture Tavory & Timmermans abductive analysis sample-size guidance.** — 2026-07-31. Section added to `briefs/research-methodology-specs.md` from published framework ([CS: HIGH]; no page-cited quotes to avoid fabrication). Covers: T&T vs. NN/g distinction, theoretical sampling, abductive saturation, link to abductive-tag skill, Bradley recommendation format. Original 2026-05-21 excerpts were not recovered — this replaces them from primary source knowledge.

- [x] **Developed citation/attribution practice for AI-derived sources.** — 2026-08-07. Filed at `briefs/citation-attribution-practice.md`. Covers: (1) APA/MLA format for citing Claude output directly [CS: VERIFIED — APA Sept 2025, MLA Aug 2025]; (2) the core rule — cite what you've read, not what Claude found — [CS: HIGH] is permission to look it up, not permission to cite; (3) [CS:] tag → citation action mapping; (4) IP/ethics layer — reading list protocol for sources Claude surfaces from its training corpus; (5) disclosure practice for professional deliverables. The NN/g fabrication remains the standing example of why [CS: FABRICATION RISK] exists.


- [ ] **Think through the Ten Types gaps surfaced 2026-08-12, plus Claude Projects for Harness/ACP.**
  - *Why:* Ten Types of Innovation gap-pass (FigJam `74ru22mcRfrJKFoyvsnNh0`, section `270:1670`; also `briefs/qbr-system-blueprint-2026-08-04.md` §15) left four open decisions, not closed ones: **Channel** (no real delivery mechanism exists in the repo — Apex Bridge is Beth's design tool, not a shipped channel — undecided at the infra level), **Customer Engagement** (four options named, none picked — bespoke / templated / client-facing-between-EBRs / scored-gamified), **Network** (partnerships vs. data normalization are different levers — Craig Fisher's "tighten your relationship with Inforcer" signal never turned into an actual move), **Structure** (nobody named who at N-able owns delivery across the other nine categories — Beth/Meaghan/Nicole are decision-owners, not a delivery org).
  - *Also flagged same session:* whether to set up a claude.ai **Project** for Harness/ACP (persistent project knowledge across chats) vs. relying on this repo's `CLAUDE.md` + memory system, which already does most of that job without leaving Claude Code.
  - *Action:* not a build task — a thinking pass. Each of the four gaps needs Beth's judgment call before anything gets designed against it.

- [x] **Set up time with Beth N.** — 2026-08-14. Done. Proposal can advance.

- [ ] **Decide whether the other four default Coworkers get their own mini ux.md.**
  - *Why:* `acp-ux.md` §10 already names this as a deferred, not-silent gap — Alert Flood Suppressor, Incident Response Analyst, Environment Health Monitor, and Security Tabletop have Council testimony but no persona cast / four-angle view / Top-Tasks spine the way QBR/EBR has.
  - *Action:* build one when there's a real reason to (a spec/build request touching one of them) — per `acp-ux.md`'s own stated rule, not speculatively ahead of need. This entry is "don't forget it's a real gap," not "do it now."

- [ ] **Design the resolved-divergence → real-spec-text graduation path.** *Parked 2026-08-03 — needs more context and thought before building, per Beth.*
  - *Why:* right now nothing turns a 🟢-resolved row in a ux.md Divergence Log into an actual Clarification/FR in the canonical spec.md — `specs/_ux/PROPOSAL.md` hand-waves this as "through the normal process," and that process doesn't exist yet as a mechanism. This is also the one fix that would let the ux.md wiring move an actual quality metric instead of just visibility (see shift-left-playbook.md rule 10).
  - *Not yet scoped:* whether the eval loop (council/Idea Chess) gets a role in deciding "resolved enough to graduate," or whether that stays Beth+Nicole's call alone. Needs Beth's call before starting.

- [ ] **File the three orphaned secondary-research source files into the real datadump, not just `scout_input/`.**
  - *Why:* `MSP_QBR_EBR_Secondary_Research.docx`, `MSP_QBR_EBR_Abductive_Analysis.xlsx`, and `RESEARCH_HANDOFF_FOR_UX_BRIEFS.md` were pulled in another chat today (2026-08-04) and were sitting unfiled in that session's own sandbox output folder until this session copied them into `scout_input/`. That's a local landing spot, not the actual datadump — checked, and the `library/` structure `datadump-update-process.md` describes (INGEST → EXTRACT → REGISTER → DIFF) doesn't exist on disk anywhere in this repo yet; it's a designed process, not a built one.
  - *What "filing in datadump" concretely means right now, until that library exists:* the Confluence AI-space page ("ACP Secondary Research — MSP QBR/EBR Practice," id `62226858351`) is the actual canonical online register per `project_acp_datadump` memory and per the round2 archive's own note. The round2 file (`scout_input/msp-qbr-ebr-secondary-research-round2-2026-08-04.md`) *claims* this page is "the canonical online register update" — that claim hasn't been independently verified this session. Don't assume it's true; check the live Confluence page against the round2 content first.
  - *Action:* (1) ~~Confirm whether Confluence page `62226858351` actually reflects the round2 findings or still needs updating.~~ **CONFIRMED 2026-08-07:** page is up-to-date; round-2 addendum is present, last modified Aug 04, 2026. (2) ~~Run the `refresh-datadump` skill~~ **SCHEDULED 2026-08-07:** refresh-datadump runs Monday 2026-08-10 at 9am — will pick up the three orphaned files in `scout_input/` and run them through gather → shelve-with-provenance → human-review-gate. (3) Separately: the `library/` structure itself is still just a spec, not built — worth its own decision on whether to build it, out of scope for this chore.

- [x] **Completed interview with Craig Fisher (Technica Solutions).** — 2026-08-07. Stefanie's recommended contact; ran her EBR training, turned his own business around using it. Interview happened. Script was at `EBR Interview - Craig Fisher.docx`, framed as Beth's primary (Craig's real practice vs. Stef's trainer-level framework). Transcript/notes to be filed.



- [x] ~~Which Jira ticket is "the vision ticket"?~~ **Skipped 2026-07-15 — Beth has no specific ticket in mind. Not pursuing.**

## Done

- [x] **Preflight check for write paths.** — 2026-08-14. Hook confirmed live in `.claude/settings.json` SessionStart. Runs curl (Atlassian), `gh auth status`, and Figma MCP config check. Active and firing at session start.

- [x] **Golden-dataset-scout output persisted — all 11 companies on disk.** — 2026-08-07. The "20 companies" claim in the original chore entry was wrong; `graded.json` confirms the dataset was always 11 companies (airbnb, betamax, google-1998, googleglass, googleplus, iphone, juicero, newcoke, quibi, tesla, webvan). All 11 source files are in `eval/council-calibration/golden-sources/` (written Aug 3). Task `whmd9kp5l` has expired; no loss occurred.

- [x] **Renamed "Pete Hegseth test" to "the publicity test" in `CLAUDE.md`.** — 2026-08-07. Both occurrences replaced (§7 Privacy Risk, line ~135; §9b Seed data rules, line ~239). Same wording and logic, living-figure reference removed. Historical briefs/handoffs left untouched.

- [x] **Verified NN/g AI testing N recommendation.** — 2026-07-31. "10–12" is [CS: FABRICATION RISK]: not found in any NN/g publication. NN/g AI testing studies used 8–9 participants without a prescriptive AI-specific N. `briefs/research-methodology-specs.md` updated accordingly.

- [x] **Sourced MeasuringU sample-size calculator.** — 2026-07-31. Free table at measuringu.com/survey-sample-size/ · One Sample Proportion Calculator at measuringu.com/calc/ · paid Excel tool at measuringu.com/product/surveysamplesize/ ($59). `briefs/research-methodology-specs.md` updated to call calculator, not hardcode N=200.

- [x] **Read and filed four r/msp QBR/EBR operator-voice threads.** — 2026-07-31. Beth read all four (ages 4–8 years old). Content filed as `scout_input/reddit-qbr-thread-01-04-*.md`. All four elderly — treat as historical baseline. Brain Dump Teams channel step remains Beth's call.

- [x] **Downloaded and filed Stefanie Hammond interview; requested followup with her recommended contact.** — 2026-07-31. Interview transcript captured and filed. Followup interview request sent to the person Stefanie named as the next good contact. Open item remains for that followup conversation.

- [x] **Prose-level language pass on all active brief bodies.** — 2026-07-24. Replaced "murder board," "kill criterion," "Battleship Day. Job: sink the ship," "COUNCIL KILL-PASS," "THE KILL, IN ONE PARAGRAPH," and "kill vector" with chess vocabulary across 11 files (155 replacements total): `idea-chess-offering-{a,b,c,d,e}.md`, `idea-chess-build.md`, `methods-library-matrix.md`, `council-mini-ir-rca.md`, `acp-vendor-deep-dives-and-idea-chess-2026-07-20.md`, `anomaly-detection-cove-council.md`, `acp-idea-chess-play-to-win-2026-07-20.md`. Handoff archives (frozen) and meta-documentation files left intact. Verified via spot-check: no retired vocabulary in active briefs.

- [x] **Renamed local `murder-board-*` files to `idea-chess-*`.** — 2026-07-16. Confirmed: all 13 files renamed (`briefs/idea-chess-offering-{a,b,c,d,e}.md` + `.assumptions.json` companions, `briefs/idea-chess-build.md` + its `.assumptions.json` companion, `prototypes/idea-chess/`), plus every in-doc filename citation updated — including two broken path citations in `prototypes/idea-chess/index.html` and `prototypes/idea-chess-fleet/index.html` (an existing, separately-named prototype) that pointed at the old filenames. Verified via `grep -rln "murder-board" briefs/ prototypes/` returning only prose-level hits (the term used as a concept, not a path) — those are the separate open item above. `acp-offerings-2026-07-14.md` and `acp-findings-2026-07-14.json` were checked and never actually cited the old name (CHORES.md's original claim was stale).
