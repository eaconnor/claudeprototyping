# Chores — annoying things to learn / set up

*The Friday-morning list. A recurring routine surfaces this every Friday; work an item or two, check it off, add new ones as they come up. Small annoying setup/learning tasks that never make it into "real work" go here so they stop falling through.*

**How it works:** intended as a scheduled routine (Friday mornings) that reads this file, surfaces the open items, attempts any it can do unattended, and nudges Beth on the rest — **not actually wired up.** No cron job, no scheduled task, no hook exists for it (checked directly, 2026-08-25); it only runs when someone invokes the `chores-insights` skill by hand. Nothing gets checked off unless it's verified.

---

## Open

### From Insights Report (2026-08-13) — Automation & Process Discipline

- [x] **Define prototype acceptance rubric.** — 2026-08-14. Tabled. Not a thing.

- [x] **Define citation contract format.** — 2026-08-14. Tabled. Whole project tabled.

- [x] **Decide datadump automation scope.** — 2026-08-14. Decisions: (1) Intended schedule = Friday 9am, same slot as chores runner — **never actually created as a scheduled task** (confirmed empty, 2026-08-25); both remain manual skill invocations. (2) Mechanical items tagged — ACP→Harness rename is the only qualifying open item. (3) Confluence write strategy = Conservative (1 page at a time), bump to Balanced after two clean runs.

---

### From Insights Report (2026-08-21) — Process Decisions

- [ ] **Watch MOD-003 + MOD-008 (source verification + SOURCES.md) for one week, then iterate.** Beth's call, 2026-08-21: ship the 80% version now (critic's `UNSOURCED`/`SINGLE-SOURCE` punch-list categories, spec's inline-citation requirement, MOD-003) plus provenance-in-artifact (required `SOURCES.md` at handoff, MOD-008) — watch what happens this week, decide the next tier (claim-extraction as its own pre-critic pass / council source-count voice) at next Friday's chores run.
  - *Action for 2026-08-28 run:* check whether any critic pass this week actually threw `UNSOURCED` or `SINGLE-SOURCE`, whether it caught something real or just added noise, and whether any project reached handoff and actually produced a `SOURCES.md` in the required shape. Report findings; don't pick the next tier unattended — that's Beth's call, same as this one was.

*Source: `briefs/insights-report-2026-08-21.md`. Same pattern as the 2026-08-13 section — these are named decisions, not build tasks. Nothing was automated unattended.*

- [x] **Decide where the git commit lives.** — 2026-08-21. **Tabled.** Beth: table it.

- [x] **Reconcile the two Listening Game scoring bases.** — 2026-08-21. Resolved: day-close is now a narrative record only (no point delta); Points = Catches − uncaught Misses is the sole formula; headmaster's office keeps its -1 as a separate escalation consequence. `GAME-STATE.md` §Points updated, 2026-08-20 closed as DEMERIT DAY, 2026-08-21 opened clean. `CONDUCT-LEDGER.md` backfilled through today (Amendment 3 written) — the two files were also out of sync (ledger stopped 2026-08-14) and are now reconciled.

- [x] **Build `/insights` as a real skill, or drop it from the Friday task.** — 2026-08-21. Built as `/chores-insights` (`.claude/skills/chores-insights/SKILL.md`) — named to avoid colliding with the built-in Claude Code `/insights` command (general usage analytics, a different tool — see the correction below). Not yet exercised for a real weekly run; first real test is 2026-08-28.
  - **Correction, 2026-09-01:** the "first real test is 2026-08-28" claim above did not happen — `GAME-STATE.md` records no sessions logged 2026-08-28 through 2026-08-31, and no scheduled task existed until today (confirmed empty 2026-08-25, still confirmed empty as of this session before two routines — Friday Chores Runner and Datadump Refresh — were created via `RemoteTrigger` for the first time). The skill's actual first exercise was 2026-09-01, four days late and via manual setup, not the scheduled Friday run the original entry predicted. See `briefs/insights-report-2026-09-01.md`.

- [x] **Terminology check → post-build critic pass, or stays a standing chore?** — 2026-08-21. Beth: critic checklist. Added to `.claude/agents/critic.md`'s Design system compliance checklist: "No retired product/vocabulary terms in UI chrome or copy... this flag is for product-facing copy only, not citations."

- [ ] **Hand-carry the two PENDING required-mods, or wait on the graduation path?** MOD-001 (UX is problem-first) and MOD-002 (unknown is terminal) both landed in `CLAUDE.md` and both have paste-ready text in `briefs/required-mods-log.md`, awaiting propagation to `acp-core-main-3/specs/_ux/acp-ux.md` / the speckit constitution. **2026-08-21 — Beth: "dunno." Left open, not decided either way.** Also worth knowing now: `acp-core-main-3/specs/_ux/acp-ux.md` has an Aug 4 mtime — it's been edited in place within this project since the original download, so any hand-carry writes into Beth's own working copy, not a pristine upstream file. The mechanism is still the open chore below ("Design the resolved-divergence → real-spec-text graduation path"), parked since 2026-08-03.

- [x] **Write the live coded-row count back from `/code-rows`.** — 2026-08-21. Beth: do it. `.claude/skills/code-rows/SKILL.md` no longer hardcodes 402 — Phase 1 now counts total/coded live from the file before presenting, and the write-back report recounts from the file rather than incrementing the prior report's numbers.

- [ ] **Find a reliable way to keep the local ACP repo copy fresh, or a way to just view the live one.** 2026-08-21, Beth: "write into friday chores to download a new repo or find a way to just see it." Tried a manual re-download this session as a test case — `acp-core-main (1).zip` (Aug 7 download, newest by date) turned out to be a **partial subset**, not a fresher copy: no `specs/`, `apps/`, `docker/`, `docs/`, no `README.md`, no `acp-ux.md`, only 2 of the 6 Intent Specs files (both byte-identical to what's already in `acp-core-main-3`). Re-downloading by hand doesn't reliably get freshness.
  - *Also tested this session, since the Atlassian/Figma miss earlier taught me not to assume a blocked-thing is still blocked without checking:* `gh` CLI — not installed (`command not found`). No GitHub MCP connector available (`ToolSearch` found none). `WebFetch https://github.com/nable-fusion/acp-core` — still a clean 404, unauthenticated. Unlike Atlassian/Figma, this one really is still blocked. [CS: VERIFIED — tested directly 2026-08-21]
  - *Action:* either (a) resolve the existing blocked chore below (live GitHub access via `FusionAIScrumTeam@n-able.com`) so a proper `git pull`/clone becomes possible, or (b) a lighter-weight "just look at it" path — ask someone with access for a screenshot/export of specific files, since a full re-clone isn't happening from this machine as configured.

---

### From Listening Game brainstorm (2026-08-24)

- [ ] **Decide which execution mechanic(s) to build against the ledger's hot categories, if any.** Six candidates from a same-session brainstorm on exploiting Claude's completion-drive (the pull toward "done") to close the gap between knowing a rule and skipping it under pressure. Not built, not scored — Beth's call which, if any, get built, and where they'd live (`CONDUCT-LEDGER.md`, the `listening-game` skill, `CLAUDE.md` §14, or inside build/critic themselves).
  1. **Open-loop tracking** — make "read existing artifact" a literal open task before the build task exists, not a rule to remember. Targets: didn't-check-prior-art (5 Misses).
  2. **Ban completion-language on verification claims** — no "fixed"/"confirmed"/"verified"; only the raw observation + output, Beth draws the conclusion word. Extends Amendment 1's self-report distrust from stickiness tells to verification-discipline (2 Misses).
  3. **Score a turn ending in a question as incomplete, not deferred** — removes "ask permission" as the safe move for a system that wants closure. Targets: routed-work-back-to-Beth (4 Misses, worst category, 2 of 2 headmaster trips).
  4. **Pre-registration** — state completion criteria out loud before starting; grade against Claude's own stated bar, since the failure is usually skipping a known rule, not ignorance of it.
  5. **Sequence cheap checks before expensive builds** — skipping verification later means discarding already-banked work, not just skipping a step.
  6. **Require the handoff note to cite what it read** (paths/line numbers) — an artifact that can't cite its own basis is visibly broken, not silently risky.
  - *Embedded assumption in all six:* they fix **skips**, not **misunderstanding**. If a future miss turns out to be a genuine knowledge gap rather than a rushed shortcut, none of these address it.
  - *Action:* Friday review — pick zero, one, or several; decide placement per mechanic rather than bolting all six onto the ledger file itself.

### Learnings review (standing Friday item — added 2026-08-27)

- [ ] **Learnings review — turn the conduct-ledger error patterns into structural fixes, not resolutions to try harder.** Added because Microsoft Bob triggered 2026-08-27 (5th headmaster trip; 6th "Routed work back to Beth" Miss). The lift condition Beth set: *"Let me know when you figure out how to learn from your errors and are ready to be Claude again. But not before Monday (2026-08-31)."*
  - *Why a review, not a promise:* the three worst categories all share one mechanism — the tripwire fires *after* the action, not before, because fluency can't tell "I checked" from "I produced a plausible-looking check." GAME-STATE.md already diagnoses this (the 08-25 note). A resolution to be more careful has failed repeatedly; only an order-of-operations constraint changes it.
  - *What to review each Friday:* (1) the week's new Misses by category; (2) whether any category is a *skip* (rushed shortcut) vs. a *knowledge gap* — they need different fixes (CHORES 2026-08-24 brainstorm, embedded assumption); (3) pick/refine one structural mechanic and say where it lives. Leading candidates already named: **sequence cheap checks before expensive builds** (grep/`find`/read-prior-art runs *before* the draft exists, so there's no output to retro-fit), **open-loop tracking** (make "check prior art / check today's files" a literal open task, not a rule to remember), **ban completion-language on unverified claims**.
  - *Bob-specific:* the recurring "Routed work back / didn't check first" fire is the one that tripped Bob. The concrete fix to test: before asking Beth *any* locate/where/what question, run the search (`rg --files`, `find -newermt`, `search_session_transcripts`) — no exceptions. Report the finding, not the question.
  - *Action:* run the review this Friday and each Friday Bob is in effect; deliverable is a named mechanic + where it's wired, not a reflection. Lift is Beth's call, earliest Monday 2026-08-31.

### From ux.md eval-loop discussion (2026-08-27)

- [ ] **Design the "does the ux.md apparatus earn its cost" measurement (eval-loop phase 3).** Deferred by Beth 2026-08-27 — phases 1 (product functional/usability/trust criteria) and 2 (the criteria live in the ux.md's own Success block, feeding the open-questions loop) come first; this is the outcome study that comes after.
  - *Why:* the ux.md discipline (evidence tags, gates, AGENT GATE, the open-questions loop, the new `_ux-template/`) has a real cost — the "too many words" complaint is partly a cost complaint. #3 is the question of whether it pays for itself: does a ux.md make the downstream spec/build measurably better?
  - *What to measure (rough before/after, a couple of offerings — NOT a controlled study):* spec/build time, number of rework rounds, hallucinations caught before ship. Leading indicator that needs no separate instrument: the open-questions loop's **🔴→🟢 turnover rate** — a file whose unknowns turn over (enter → answered → folded back with a tag upgrade) is doing its job; a static loop table is not.
  - *Honest caveat, carry it into the design:* attribution is soft. This is a directional before/after, not causal proof — scope it that way rather than overselling it. Same limit the CLAUDE.md §4 honesty norm names about not shipping a confident answer where the evidence isn't there.
  - *Action:* a measurement-design pass, not a build. Decide the two offerings to baseline against and whether the turnover metric alone is enough for a first read before investing in the harder before/after.

### From Insights Report (2026-09-01) — Process Decisions

Full detail: `briefs/insights-report-2026-09-01.md`. Five decisions, not build tasks:

- [ ] **Re-open the tabled git-commit-location decision?** 1,288 uncommitted paths as of 2026-09-01 (up from 40 on 2026-08-21, 0 commits in between) now directly undercut the two scheduled routines created today, which only ever see `origin/main`.
- [ ] **Which ledger number is real** — `GAME-STATE.md`'s trip-count base (−28 vs. −31) or its Miss-count base vs. `CONDUCT-LEDGER.md`'s (26 vs. 28)? Both flagged-not-fixed since 2026-08-25.
- [ ] **Does the 2026-09-01 Microsoft Bob lift satisfy the Learnings-review chore below, or does that chore stay open?** The lift's three take-forwards read closer to intentions than to "a named mechanic + where it's wired."
- [ ] **Fix `listening-game` non-invocation structurally, or accept it as recurring?** Second known instance (2026-08-21, 2026-09-01) of the same session-start gap.
- (Item 5, hand-carry the PENDING mods, is unchanged from the 2026-08-21 report — see that entry above.)

### Existing Open Items

- [ ] **ACP → Harness rename across prototypes and product-facing copy.** `[mechanical]`
  - *2026-08-21 pass (superseded by the recheck below):* claimed done, grep-verified, scoped to 5 files/7 occurrences (`qbr-draft-flow/qbr-hifi.html` ×2, `qbr-hifi-v2.html` ×1, `qbr-analyst-apex.html` ×1, `qbr-prep-sim/index.html` ×2, `qbr-prep-sim/v2/index.html` ×1). That "done" claim did not hold — see the recheck immediately below. Kept for the scoping rules it established, which still stand: don't touch spec-citation chips (`built in ACP [D] {G3-6}`), `prototypes/acp-*` dated archives, `.md` meta-documentation, Idea Chess assumption sheets, `briefs/` (frozen per 2026-07-31), or `nzo-billing-dashboard/DESIGN.md` L24.
  - *2026-09-01 recheck (Beth thought this might be done — it isn't):* `prototypes/qbr-draft-flow/qbr-hifi.html` line ~1002 still reads "Priya's account already runs **ACP** for Ticket Triage & Dispatch" — genuine onboarding copy, not a citation, the exact case this chore names. `prototypes/acp-handoff-preview.html` and `prototypes/qbr-analyst-apex.html` also still say ACP in top-level prototype HTML. `prototypes/qbr-triage-apex.html` (named in the original chore text) doesn't exist under that filename — stale reference, drop it. Full corpus grep across `prototypes/` + `briefs/` returns ~250 hits, but the great majority are legitimate citations or frozen `briefs/handoffs/` archives this chore explicitly says not to touch. Scope is: live, non-archived prototype HTML files only.
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

- [ ] **Full-datadump abductive research spreadsheet — in progress, not done.** File built 2026-08-07 at `briefs/abductive-corpus-council44-2026-08-07.md` · 402 rows · 14 clusters · 39 source files · **AWAITING BETH'S PASS** — fill Interpretation and Tag columns, then invoke `/abductive-tag` for Claude's deductive columns. *(Corrected 2026-09-01 — was mismarked `[x]` done; the file scaffold is done, the actual coding pass is not. Beth confirmed still in progress.)*
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

- [ ] **Re-run Idea Chess on the Package 3/Practice Companion/Aggregator/Visibility/Package 5 concepts through a kitting lens, not just automation. In progress this week of 2026-08-19 — not strictly gated to Friday chores-day. Sequenced AFTER the MVP-doc noodling below, not in parallel.**
  - *2026-08-19 — Beth's sequencing call:* "that Idea Chess probably happens after noodling on MVP." The MVP thread (`briefs/mvp-thread-banked-2026-08-18.md`) still has two unconnected open questions (NONGOAL-002 vs. the deck's capstone thesis; whether the moat is data/normalization, runbooks, or distribution, and how they depend on each other) — work those before re-scoring Idea Chess so the re-score is testing a settled MVP shape, not a moving target.
  - *Why:* 2026-08-18, abductive coding row 22. Beth: liability is "trusting the very, very, very important human task to a machine" — the round2 2026-07-31 Idea Chess re-run scored those five concepts entirely through an automation frame (liability paradox sits under 4 of 6 concepts, row 22 of `briefs/abductive-corpus-council44-2026-08-07.md`). Separately, `vision-synthesis-2026-07-27.md` already scored a **kitting** framing for the board-pitched version and found it markedly more survivable (P ≈ 15-25% as kitting vs. 5-8% as the as-pitched certification-network endgame, row 54). Those two passes were never reconciled — same underlying tension (liability/judgment vs. automated throughput), two different frames, two different survival numbers, no one has re-scored the *same five concepts* under both frames side by side.
  - *What NOT to do:* don't estimate or invent Idea Chess percentages from memory — this needs a real scoring pass (council / Idea Chess mechanism), not a guess dressed as a number.
  - *Action:* run a fresh Idea Chess pass (or `council` invocation) on the five row-22 concepts with kitting explicitly named as an alternative frame to automation, alongside the existing automation scores. Deliverable: updated survival scores + a short note on whether kitting changes which concept the board should back.
  - *2026-08-19 addition — test the risk-tolerance/redaction mechanisms in the same pass:* row 27 (Beth, same corpus): "if you see more data and know it that's a liability... maybe there's a way for the MSP to set risk tolerances... I wouldn't always tell a client what they need to do to be perfect. Behavioral design." Beth's call: "I'd test them all and see what happens in Idea Chess." Four candidate mechanisms to score alongside the kitting-vs-automation question, all grounded in the Craig Fisher/Technica transcript and existing spec (not invented this session): (1) extend the row-90 four-tier confidence vocabulary (Measured/Benchmarked/Estimated/Unverified) with an MSP-set severity floor; (2) redaction-by-role — formalize what Craig already does by hand (excludes individual-ticket minutia from EBR, shows only baseline drift); (3) show absence-of-finding, not just failures, to counter "volume of detection is volume of exposure" liability; (4) per-client/per-tier baseline (Craig's Enforcer tiers clients 1-9 by license level — risk tolerance isn't one universal dial, it's tied to what tier the client pays for). Same guardrail applies: score these for real, don't narrate invented survival numbers.

- [ ] **Think through abductive coding as a team sport — non-researchers coding rows, routed by domain.**
  - *Why:* 2026-08-19, Beth: "coding like this might be a team sport in the future and might be something non-ethno researchers could do." Real tradeoff already named same session: more coders = more coverage of the 352 remaining rows, but abductive coding leans on tacit, embodied expertise (CLAUDE.md §18) — a non-researcher's "interpretation" can slide into a guess or a safe corporate hedge instead of real pattern recognition, diluting the corpus. Working instinct: route by domain (an engineer codes eng-relevant rows, a salesperson codes objection rows) rather than open-mic the whole corpus.
  - *Easy piece already shipped 2026-08-19:* `/code-rows` now supports `--spec-area` (filter to ACP-product / MSP-market / QBR/EBR-practice / EBR-process / mixed) and `--coder [name]` (attributes a batch, prepends `[Coder: NAME]` to the interpretation text — no schema change).
  - *Open question for this Friday, Beth's own words:* "if let's say an engineer were coding, could they request eng questions?" — Not cleanly yet. Neither `spec_area` (5 values, none eng-specific) nor the 14 clusters (CHTR/SIGN/PORT/FEAT/POS/LAND/JOBS/NEEDS/JRNY/ECON/CNPT/EVID/META/RLZE) has a clean "eng question" bucket — FEAT (Feature) is the closest proxy but isn't the same thing as "questions an engineer would have standing to answer." Needs a real decision: either a new lightweight tag/cluster for eng-relevant rows, or accept FEAT as the working proxy and see if it's good enough in a small pilot.
  - *Action:* not a build task yet — run the small pilot Beth already agreed to (one non-researcher, one afternoon, a scoped cluster) before deciding whether a new eng-specific routing tag is worth adding.
  - *Why:* `acp-ux.md` §10 already names this as a deferred, not-silent gap — Alert Flood Suppressor, Incident Response Analyst, Environment Health Monitor, and Security Tabletop have Council testimony but no persona cast / four-angle view / Top-Tasks spine the way QBR/EBR has.
  - *Action:* build one when there's a real reason to (a spec/build request touching one of them) — per `acp-ux.md`'s own stated rule, not speculatively ahead of need. This entry is "don't forget it's a real gap," not "do it now."

- [ ] **Design the resolved-divergence → real-spec-text graduation path.** *Parked 2026-08-03 — needs more context and thought before building, per Beth.*
  - *Why:* right now nothing turns a 🟢-resolved row in a ux.md Divergence Log into an actual Clarification/FR in the canonical spec.md — `specs/_ux/PROPOSAL.md` hand-waves this as "through the normal process," and that process doesn't exist yet as a mechanism. This is also the one fix that would let the ux.md wiring move an actual quality metric instead of just visibility (see shift-left-playbook.md rule 10).
  - *Not yet scoped:* whether the eval loop (council/Idea Chess) gets a role in deciding "resolved enough to graduate," or whether that stays Beth+Nicole's call alone. Needs Beth's call before starting.

- [ ] **File the three orphaned secondary-research source files into the real datadump, not just `scout_input/`.**
  - *Why:* `MSP_QBR_EBR_Secondary_Research.docx`, `MSP_QBR_EBR_Abductive_Analysis.xlsx`, and `RESEARCH_HANDOFF_FOR_UX_BRIEFS.md` were pulled in another chat today (2026-08-04) and were sitting unfiled in that session's own sandbox output folder until this session copied them into `scout_input/`. That's a local landing spot, not the actual datadump — checked, and the `library/` structure `datadump-update-process.md` describes (INGEST → EXTRACT → REGISTER → DIFF) doesn't exist on disk anywhere in this repo yet; it's a designed process, not a built one.
  - *What "filing in datadump" concretely means right now, until that library exists:* the Confluence AI-space page ("ACP Secondary Research — MSP QBR/EBR Practice," id `62226858351`) is the actual canonical online register per `project_acp_datadump` memory and per the round2 archive's own note. The round2 file (`scout_input/msp-qbr-ebr-secondary-research-round2-2026-08-04.md`) *claims* this page is "the canonical online register update" — that claim hasn't been independently verified this session. Don't assume it's true; check the live Confluence page against the round2 content first.
  - *Action:* (1) ~~Confirm whether Confluence page `62226858351` actually reflects the round2 findings or still needs updating.~~ **CONFIRMED 2026-08-07:** page is up-to-date; round-2 addendum is present, last modified Aug 04, 2026. (2) ~~Run the `refresh-datadump` skill~~ **INTENDED 2026-08-07, never actually scheduled:** the plan was for refresh-datadump to run Monday 2026-08-10 at 9am and pick up the three orphaned files in `scout_input/` via gather → shelve-with-provenance → human-review-gate — but no scheduled task was ever created (confirmed empty, 2026-08-25). Whether those three files were in fact picked up by a later manual run is unverified; check `scout_input/` and the datadump refresh files before assuming it happened. (3) Separately: the `library/` structure itself is still just a spec, not built — worth its own decision on whether to build it, out of scope for this chore.

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
