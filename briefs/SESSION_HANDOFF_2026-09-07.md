# Ringo Brief — 2026-09-07

## The project
Evaluating Vertesia — an AI-native agent-orchestration platform — as a candidate partner runtime for the EBR/QBR Coworker prototype, by logging in, mapping its object model against the coworker's 5 screens, and hands-on testing its API (including a live write).

## What's built
- `briefs/vertesia-api-capability-map-2026-09-07.md` — full API capability map, 267 endpoints
- `briefs/ebr-vertesia-ux-mapping-2026-09-07.md` — 5-screen-to-Vertesia-object map; contains the Studio Assistant approval-gate incident finding and the CompositeAppConfig write-works-nothing-renders-it finding
- `briefs/ebr-vertesia-concept-test-plan-2026-09-07.md` — Track A (Vertesia's own product) vs Track B (standalone UI) test plan
- `briefs/vertesia-team-playground-notes-2026-09-07.md` — team-shareable notes with live links
- `prototypes/ebr-coworker-005-arc/md-coworker/working-notes.md` and `risk-register.md` — both overwritten this session with a real test cycle run against the actual redacted Technica EBR spreadsheet data

## What was decided
- Dashboards question resolved: no tool literally named `data_create_dashboard`, but the real REST path `POST /data/{storeId}/dashboards` exists in the OpenAPI spec — Nicole's "delightful builder interface" is conversational (ask an agent, it calls the endpoint), not a manual builder screen. Confirmed against spec, not yet tried live.
- Beth said yes to creating a new, isolated, private Vertesia Project (via `account:admin`-gated `POST /projects`) to de-risk further experimentation away from the shared MSP project where other people's real Interactions/runs live. Not yet executed — this is the first move next session.
- `working-notes.md` and `risk-register.md` stay uncommitted. This is intentional, not an oversight — the runbook's invariant 1 requires named human sign-off before commit, and this test cycle hasn't had it. **Do not commit them without asking.**

## What's unresolved
1. **Publish-vs-draft theory, untested.** An EBR Interaction in Vertesia Studio fails on `temperature` config even after the field was fixed and saved. Leading theory: `Run` executes against a published version and this Interaction has never been published (still "v1 draft"). Publishing is a shared object other people use — this is Beth's call, not mine to make unilaterally.
2. **CompositeAppConfig.** PUT confirmed working (200, persists on GET) but requires `account:admin` (not project-level roles), and nothing checked in Vertesia's own Studio UI renders the `message` field anywhere. Untested: whether `logo` or the `apps` array render anywhere.
3. **Dashboard endpoint, not yet tried live.** Next session could ask an agent to build a dashboard against the existing `MspTenantHierarchy` database (168 rows) and see what actually happens.
4. **New isolated Vertesia Project, not yet created.** Beth said yes; the `POST /projects` call itself hasn't been made. Concrete first move for next session.
5. **Three live API keys, undisabled:** `sk-ff3cd0ab00062711df254e4418922a7d` (developer), `sk-650ab7a157c2d6c759343e2225ab19de` (developer), `sk-960c5df07d68825551f76bed73a1050f` (admin). Disable/delete when done playing — not yet done.
6. **Original pre-Vertesia punch list, untouched all session:**
   - Fix "Five platform coworkers" vs 6-card mismatch on `prototypes/ebr-coworker-005-arc/landing.html` (~line 261)
   - Repoint `landing.html`'s CTAs to `harness-2026-09-04.html`
   - Reconcile topbar/Bradley rail in `harness-2026-09-04.html`
   - Wire `first-run-floor-alive-2026-09-04.html`'s 4-beat animation as the real onboarding path
   - Retire/label superseded files (`harness-this-week-2026-09-04.html`, `~/Desktop/harness-week-goodness-2026-09-04/`)
   - Ask Beth whether "Look around first" should persist across reloads

## Standing notes (carry forward, don't re-litigate)
- External-facing copy (Teams posts, etc.) stays close to Beth's own dictated wording — not reframed or polished by the assistant (CLAUDE.md §1). Reinforced hard this session when she rejected a first draft.
- The AI agent has no separate secret/credential redaction gate — screen-reads capture whatever's rendered, credential or not. Already acknowledged to Beth this session; treat as settled, not new.

## Next session
Start with item 4: create the isolated private Vertesia Project via `POST /projects` before touching anything else in the shared MSP project. Then item 1 (publish-vs-draft) needs Beth's explicit go-ahead before publishing the EBR Interaction, since it's shared. Item 3 (ask an agent to build a dashboard against `MspTenantHierarchy`) is a cheap next test once the isolated project exists. Don't commit `working-notes.md` or `risk-register.md` without a named sign-off. The old punch list (item 6) is still sitting there if Beth wants to swing back to it instead.

## Files
- `briefs/vertesia-api-capability-map-2026-09-07.md` — 267-endpoint API capability map
- `briefs/ebr-vertesia-ux-mapping-2026-09-07.md` — 5-screen-to-object map, approval-gate + config-write findings
- `briefs/ebr-vertesia-concept-test-plan-2026-09-07.md` — Track A/B test plan
- `briefs/vertesia-team-playground-notes-2026-09-07.md` — shareable notes, live links
- `prototypes/ebr-coworker-005-arc/md-coworker/working-notes.md` — uncommitted, real test-cycle run, needs sign-off
- `prototypes/ebr-coworker-005-arc/md-coworker/risk-register.md` — uncommitted, real test-cycle run, needs sign-off
- `prototypes/ebr-coworker-005-arc/landing.html` — pre-existing punch-list item, untouched this session
- `prototypes/ebr-coworker-005-arc/harness-2026-09-04.html` — pre-existing punch-list item, untouched this session

---
*Handoff written: 2026-09-07*
*Band Protocol × Zero Vector — values over rules, always*
