# NEXT-STEPS — 2026-09-02 — EBR Coworker rebuild

**Status at close of 2026-09-01:** `critic-pass-2.md` verdict — **"Not ready for handoff as-is."** Two FAILs block: design-system compliance (Bradley rail absent, wrong token set, no JetBrains Mono, no mode toggle) and `landing.html` vision-framing copy (untouched). Two RISK items are named but lower-severity. One process note (brief §D arithmetic) needs naming, not fixing.

This file sequences tomorrow's session so it can end in `/handoff` — but only after critic's FAILs are cleared and Beth has done her own markup pass on the result.

---

## Step 1 — Design-system build pass (agent work)

**Who:** `build` agent, re-entering `ebr-app.html` and `landing.html`.
**Fixes, per `critic-pass-2.md` lines 55–64:**
- Replace the current `:root` block (`--canvas`, `--surface`, `--nav`, `--apex`, `--r`/`--r-lg`/`--r-pill` at 6/10/999px) with the canonical Apex Bridge contract from `.claude/agents/build.md`: `--bg-app`, `--bg-surface`, `--brand`, `--brand-strong`, `--brand-soft`, `--alpha-accent`, `--radius-sm/md/lg/full` at 2/4/16/999px.
- Load JetBrains Mono in the Google Fonts link (currently only Manrope + Inter); repoint `--font-m` to it instead of the silent Inter fallback.
- Build the Bradley rail into both `ebr-app.html` and `landing.html` — readiness badge, what-you-nailed/what-will-hurt-you block, routed Product/Design/Research/Eng cards. This is the single largest gap; CLAUDE.md §9b calls it non-negotiable and it currently doesn't exist in either file.
- Add the 3-way light/dark/system mode toggle with `apx-mode-pref` persistence (also entirely absent).
- Re-verify token migration doesn't touch the four already-passing checks (3-site honesty badge, no-overclaim copy, seed-data grep-clean, the 4 build-time addenda) — this is a token/rail swap, not a logic rewrite, so those should survive untouched. Confirm, don't assume.

**Do not touch in this step:** the FINDINGS/AREAS render logic, the arc diagram, the review-choice flow — all already critic-passed. This step is styling-contract and rail only.

---

## Step 2 — Two RISK-item fixes (agent work, small)

**Who:** `build` agent, same pass or immediately after Step 1.
1. **Dead code path** — `rbLockBadge()`'s "section locked, permitted (not blocked)" tooltip variant is written but no seed row triggers `lock:{scope:'section', noPermission:false}`. Either add a seed row that reaches it, or cut the branch if it's not needed for this MVP scope — Beth's call which, flag it rather than silently picking one.
2. **Color collision** — `--lock:#a56a00` is the literal same hex as `--amber`, already carrying four other meanings (toggle "you do this" state, `.chip.draft`, `.tier.estimated`, `.warncall`). Give locked its own distinct hex value so the brief's "distinct semantic color" instruction is satisfied in practice, not just in variable-naming.

---

## Step 3 — Beth's own markup review (Beth, hands-on, not agent work)

**Positioned here — after Step 1's token/rail fix, before landing.html copy work — on purpose:** Beth review the corrected `ebr-app.html` markup once it's running on the real Apex Bridge tokens and has the rail in place, rather than reviewing a file she knows is about to change underneath her. This is the version worth her time: catching things a build agent's self-check won't (spacing feel, whether the rail's routed cards actually read right, whether the mode toggle behaves), *before* the landing.html copy work goes in, since that's a separate file and doesn't gate on it.

**She asked for this specifically — name it as its own step, not folded into "QA."** No agent substitutes for this pass. This is markup review, not a fresh critic run.

---

## Step 4 — landing.html vision-framing copy (needs Beth's input before any agent proceeds)

**Blocked on Beth, not on an agent.** Per `idea-chess-rebuild-2026-09-01.md` BET-F: this brief's own critique already named the risk of a build agent generating this hero copy from a blank page with "no earlier generation wrote finished marketing copy" to edit against — a direct violation of CLAUDE.md §1 ("Never generate first... Her voice is the seed. You are the compost").

**What's needed:** Beth brings a line or fragment for the new hero — replacing "Hire the coworker. Keep the judgment." — that carries either the Maister leverage-ratio thesis ("automate the assembly, never the judgment," sourced `prototypes/ebr-big-map/ebr-big-map-current-vs-harness-2026-08-18.html:127`) or the £300k UK-MSP resilience story (sourced `prototypes/ebr-coworker-options/idea-chess-survival-testimony.md:32`), or both.

**Then:** Paul edits/sharpens what Beth brought. Do not hand this to `build` or `spec` as a generate-from-scratch task — that's the exact failure mode BET-F flags.

---

## Step 5 — Process note (name it, don't fix it)

`briefs/ebr-coworker-rebuild-2026-09-01.brief.md` §D says "implement all five [state signals]" then lists six bullets. Not urgent to fix in the brief itself, but name it explicitly in the handoff packet so a future session doesn't silently treat this brief as a clean, reusable spec. This is a documentation note for `HANDOFF.md`, not a build task.

---

## Step 6 — Critic pass 3 (agent work)

Re-run critic against the corrected `ebr-app.html` + `landing.html` once Steps 1, 2, and 4 are done and Beth's Step 3 review comments (if any) are folded in. Confirm the design-system FAIL and landing.html FAIL both clear. This is what unblocks `/handoff` per CLAUDE.md §9b — the packet does not ship while critic says "not ready."

---

## Step 7 — `/handoff`

Only once critic pass 3 comes back clean. Assemble the full packet per CLAUDE.md §9b structure (`CLAUDE.md`, `README.md`, `HANDOFF.md`, `NEXT-STEPS.md`, rail markdown, brief, HTML, both critic passes, `SOURCES.md`, `scout/`) at `briefs/handoffs/[recipient]-ebr-coworker-[date]/`. `SOURCES.md` is a compilation step from what spec/build/critic already sourced — not new research.

---

## Sequencing summary

| Step | Owner | Gates on |
|---|---|---|
| 1. Design-system build pass | agent | — |
| 2. RISK-item fixes | agent | can run alongside Step 1 |
| 3. Beth's markup review | **Beth** | Step 1 complete |
| 4. landing.html copy | **Beth input → Paul edit** | independent of 1–3, but sequenced after Step 3 so Beth isn't reviewing two moving files at once |
| 5. Process note in handoff docs | agent (documentation only) | — |
| 6. Critic pass 3 | agent | Steps 1, 2, 4 done; Step 3 feedback folded in |
| 7. `/handoff` | agent | Step 6 clean |

## Files
- `prototypes/ebr-coworker-005-arc/critic-pass-2.md` — the post-build critic verdict driving this plan
- `prototypes/ebr-coworker-005-arc/ebr-app.html` — main build target for Steps 1–2
- `prototypes/ebr-coworker-005-arc/landing.html` — copy target for Step 4, rail target for Step 1
- `briefs/ebr-coworker-rebuild-2026-09-01.brief.md` — brief with the §D count error (Step 5)
- `prototypes/ebr-coworker-005-arc/idea-chess-rebuild-2026-09-01.md` — source of BET-F, the reasoning behind Step 4's Beth-first gate
- `.claude/agents/build.md` — canonical Apex Bridge token contract Step 1 must match
