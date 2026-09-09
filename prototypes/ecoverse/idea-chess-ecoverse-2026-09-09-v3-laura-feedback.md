# IDEA CHESS v3 — Ecoverse, updated for Laura's feedback + gap analysis

**Target:** the same Killer-App Hypothesis this board has tracked across two prior passes, updated with real stakeholder response (Laura) and the gap analysis it triggered.
**Stance:** adversarial, unchanged.
**Supersedes:** `idea-chess-ecoverse-2026-09-09-v2-killer-app.md` on every point below; silent on everything v2 already settled that this new evidence doesn't touch (the ten-lens pass, §§1.1–1.10, carries forward unchanged except where noted).
**Date:** 2026-09-09 · Owner: Beth Connor
**New evidence this pass:** Laura's response to the Killer-App slide ("directionally it looks good," + two named open questions: identity, RT system state, + a request for a two-part gap analysis) · `prototypes/ecoverse/gap-analysis-ecoverse-2026-09-09.md`, including the scope correction on "N-sight replacement" (the deck conflates a stated goal — new-NCA-customer independence — with an unstated one — existing-base migration — and this board's own first-draft gap analysis made the same conflation before being corrected).

---

## 0. Ground truth — three additions

| Layer | State | Evidence |
|---|---|---|
| **A real stakeholder (Laura) has seen and responded to the killer-app claim** | `[BUILT]` — this happened, not hypothetical | Beth's direct report of Laura's note |
| **"Identity" and "RT system state" are named in the strategy but undefined anywhere in the corpus** | `[?]` — confirmed absent, not just unclear | `gap-analysis-ecoverse-2026-09-09.md` Part 1; direct search of both deck pulls found one unexplained mention of each |
| **There is no stated plan, phase, gate, or measure for migrating the existing N-sight installed base** | `[?]` — a genuine absence, not a gap against a target. The deck's only stated claim (Phase 2) is *new*-customer independence from Classic N-sight; existing-customer migration isn't named anywhere as a goal | `gap-analysis-ecoverse-2026-09-09.md` Part 3 scope correction |

**The single most important new fact for this board:** a real stakeholder liked the direction and asked exactly the two questions this board's v1/v2 passes were already circling — and in trying to answer her second question (the N-sight gap analysis), this board's own first draft made the same category error the deck makes: treating "N-sight replacement" as one goal when the deck only ever commits to a narrow slice of it (new customers, not the base). **The strategy doesn't have a stated position on the existing N-sight installed base at all — not a bad one, an absent one — and that absence survived two idea-chess passes and one gap analysis before being caught.**

---

## 1. Ten-tradition pass — one lens sharpened, one lens added new material

Everything from v2's §1.1–1.10 carries forward unchanged. Two updates:

### 1.9 Migration-cost / Architecture debt — sharpened, now a required bet
v2 flagged the Jira-vs-vision scope split as a migration-cost risk (HOLE1). This pass sharpens it into something more concrete and promotes it to a required bet (**BET12** below): **there is no answer, anywhere in this corpus, to "what happens to the customers already on N-sight?"** Not a bad answer — no answer. A strategy that names four phases of *new* acquisition (IT Pro → MSP → upmarket → default) and is silent on the existing base is deferring the single most architecturally expensive question (a live migration of a live installed base) to a point where it hasn't even been scheduled. Precedent (the ACP board, `briefs/idea-chess-build.md` BET9) found exactly this shape of risk once before: an un-scoped migration that "comes due" the moment someone asks the obvious next question. Laura just asked it, in effect, by asking for the gap analysis.

### 1.3 Service Blueprint — new material
The identity/RT-system-state gap is a **back-stage definition gap**, not just a front-stage one: "Trusted Action" (RBAC, permissions, audit) front-stages a governance promise whose back-stage actor — identity — has never been named as a component with an owner, a status, or a phase. Same for "RT system state" under "Prove the Outcome." Both promises sit on undefined back-stage machinery, and the deck can't fix this by writing better copy; it needs an actual identity architecture decision (§ per the gap analysis: N-able SSO, customer IdP, or both, and how Coworkers get attributable identities).

---

## 2. Holes — two closed into bets, one sharpened

- **HOLE (Identity) — now scoped, not resolved.** Per the gap analysis: this isn't a lookup, it's a three-way decision (N-able login, customer IdP, Coworker identity for audit attribution). `[?]`, compounds BET4 (AI trust — an audit trail attributed to no clear identity doesn't build trust) and BET12 below.
- **HOLE (RT system state) — now scoped, not resolved.** Three plausible readings (endpoint config state / live Coworker execution state / compliance posture state), and the research that would resolve it (Taha's compliance/cybersecurity work) hasn't landed. `[?]`, compounds the same Differentiators-table gap already named in v2's §1.10 (ecosystem side empty).
- **HOLE1 (v2) is now promoted to BET12** — see Monte Carlo. The existing-base migration question is concrete and important enough to score, not just name.

---

## 4. Monte Carlo read — updated with BET12

**Required bets, this revision:**

| Bet | p(true) | Why |
|---|---:|---|
| BET1 — killer-app synthesis is real, non-diluted differentiation | 0.25 | unchanged from v2 |
| BET2 — greenfield/blue-ocean segment is real | 0.15 | unchanged from v2 |
| BET3 — land-low/expand-up margin model holds | 0.35 | unchanged from v2 |
| BET4 — auto-execute AI Coworkers build trust | 0.40 | unchanged from v2; identity gap doesn't move this further without a decision either way |
| BET5 — IT-Pro-then-MSP sequencing right | 0.40 | unchanged from v2 |
| BET7 — narrative matches shipped/built reality | 0.20 | unchanged from v2; the gap analysis's Part 2 count (9 of 10 Trial UX items "Not started") independently confirms this without moving the number |
| **BET12 (new) — the strategy has a real, scoped answer for the existing N-sight installed base** | **0.20** | not "will it be hard" — it's "does a plan exist at all," and right now it doesn't; low p reflects genuine absence, not a bad plan |

**Naive survival (product of the seven `required:true` entries):** 0.25 × 0.15 × 0.35 × 0.40 × 0.40 × 0.20 × 0.20 ≈ **0.000084 → ~0.0084%.** *(grep-verified: `python3 math.prod` = 8.4e-05, 2026-09-09.)*

Lower again than v2 (0.042%) — for the same reason v2 was lower than v1: **a new, specific, checkable claim entered the board (BET12) and it's currently unanswered, not just uncertain.** This is the pattern across all three passes now: every time this strategy gets more specific, the specific version is weaker than the vague version it replaced. That is itself a finding, not just a number — see the closing verdict.

**Sensitivity ranking, updated:**
1. **BET7's fix (the same-document contradiction) — still first, still cheapest.** Unchanged from v2.
2. **BET12 (existing-base plan) — new, and arguably higher-leverage than anything else on this board.** This isn't a research task or a build task — it's a single decision meeting: does existing-base migration happen, ever, on any timeline? If no, say so explicitly and stop scoring gap analyses against it. If yes, it needs its own phase, gate, and measure the way Phases 1–4 have them. Cheap to resolve (one decision), high damage if left silent (it's the thing every existing customer eventually asks).
3. **The identity/RT-system-state decisions.** Cheap (they're scoping decisions, not builds) and they unblock BET4's honest scoring and the Differentiators table.
4. **BET2 (greenfield).** Unchanged priority from v2.
5. **BET1 (the synthesis hypothesis).** Unchanged priority from v2.
6. **BET3 (margin math).** Unchanged.

**Independence caveat.** BET12 is correlated with BET7 through the same root cause v2 already named: **the strategy's narrative slides run ahead of what its own delivery/scope tables commit to.** A phase-by-phase acquisition story with no word on the existing base is the same pattern as a Phase 1 "why we win" slide with no built onboarding — confidence stated where a plan doesn't yet exist. Fixing that one root habit (say only what the tables support) would lift BET7 and BET12 together.

---

## 5. Oregon Trail — one addition to DEFEND

v2's four phases (align → differentiate → scale → defend) are unchanged in shape. One addition:

- **DEFEND, extended.** v2 named the governance/ecosystem gap here. Add: **the existing N-sight base is a defend-phase risk hiding at align-phase timing.** If Ecoverse succeeds at new-customer acquisition (Phases 1–4 as written) while the existing base's fate stays unstated, the company will face the existing-base question anyway — just later, under more pressure, and possibly after competitors (who all explicitly court switchers, per the deck's own Section 02) have already made the offer N-able hasn't.

**Where it most likely falls — unchanged from v2, with a caveat added:** still DIFFERENTIATE, for the reasons v2 gave. But BET12 is a second, independent way this strategy can stall even if DIFFERENTIATE succeeds — a strategy that wins new customers while never resolving what happens to the existing base doesn't die on the trail so much as **arrive at a second trail it didn't know it was on.**

---

## Bet table — additions only (full table in v2, unchanged except as noted)

| ID | Bet | State | p | Required? | Losing condition |
|---|---|---|---:|:--:|---|
| BET12 | The strategy has a real, scoped answer for the existing N-sight base | `[?]` — absent, not bad | 0.20 | ✅ | no phase, gate, or measure names this anywhere in the corpus |

---

*Laura's read — "directionally it looks good" — is a fair one, and this board isn't here to overturn it; direction and destination are different questions. The genuine strength, confirmed again this pass: the questions a real stakeholder asked on first contact are the same ones this board's own adversarial process kept surfacing, which means the instinct on both sides is sound. The fatal-if-true weakness, sharpened by this pass: every time this strategy is asked to get specific — a killer app, an onboarding motion, an existing-customer answer — the specific version is currently missing or weak, and the vague version was doing more work than anyone noticed. Laura's gap analysis is the right next move. Answer it before the next slide gets more confident than the tables underneath it.*
