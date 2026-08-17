# CLAUDE.md — Nicole ACP Headless Handoff (Rerun 2026-05-28)

You are reading the orientation file for a Band Protocol handoff packet.

## What this packet is

A rerun of the ACP Headless Agent Dashboard experiment for Nicole Reineke. Three failures from prior passes are corrected here:

1. **Math.** Prior brief: 55%. First correction: 82%. Both wrong. Honest math: 70% on world-claims (lead), 63% on test-plan readiness, 82% only if you incorrectly count meta-TODOs as evidence deficit. See `math-recount.md`.

2. **Design fidelity.** Prior prototype used ad-hoc colors and didn't reference yesterday's `prototypes/acp-v1/index.html` Apex Bridge token system. This pass ports `--br-*` tokens with light/dark parity. Same contract as yesterday.

3. **Council.** Nicole asked for Doblin Ten Types of Innovation as a sixth voice. Score: **4/20** — single-type innovation, which Doblin's research says fails. Added as Tension 4 and a fourth strategic call.

**Status:** Tier 1 · Concept. NOT ready for Tier 2 (Direction). The brief is honest about that now, and the Ten Types finding raises a new question — whether to expand brief scope before Tier 2.

## How to use this packet

If you opened this folder in a fresh Claude session, you have everything you need to:
- Understand what's being prototyped (read `acp-headless.brief.md`)
- See the prototype (open `acp-headless.html` in a browser)
- See what the critic said before and after the math correction (`critic-pass-1.md` → `critic-pass-2.md`)
- See five expert frameworks weigh in (`council-testimony.md`)
- See the decisions Nicole owns (`HANDOFF.md` and `NEXT-STEPS.md`)
- Verify any source claim (`scout/` directory holds all 8 source docs)

## Reading order

1. `README.md` — reading-order pointer + what's being tested
2. `HANDOFF.md` — verified math, tensions named, three calls
3. `NEXT-STEPS.md` — what only Nicole can decide + Tier 2 pipeline plan
4. `acp-headless-rail.md` — Bradley rail as portable markdown
5. `acp-headless.brief.md` — three-gate brief (claim-tagged, 82% ratio verified)
6. `critic-pass-1.md` — pre-build scorecard with corrected math
7. `critic-pass-2.md` — post-build re-score + delta
8. `council-testimony.md` — five frameworks, three contradictions
9. `acp-headless.html` — working prototype
10. `scout/` — all 8 source docs

## Band Protocol context for this work

- **Lucy holds the clipboard.** This work serves Nicole, not the vendor.
- **47% rule.** Every ratio in this packet has been grep-verified. The prior run's 55% claim was the bug this rerun fixes.
- **Tier 1 (Concept) accepts high [A]+[?].** The brief should not pretend otherwise.
- **Pete Hegseth test.** All seed data is fictional (Summit IT Partners, Riverside Tech, etc.).
- **Tensions routed, not resolved.** Council contradictions are Nicole's decisions to make.

## What changed vs. prior passes

| Element | 2026-05-27 prior | 2026-05-28 AM (first correction) | 2026-05-28 PM (this pass) |
|---|---|---|---|
| Brief evidence ratio | "55%" (claimed) | "82%" (still wrong — conflated TODOs with claims) | **70% world-claims · 63% test-plan · 82% inflated** (three honest numbers) |
| Brief frontmatter | no `prior_runs` | one prior run logged | two prior runs logged with explanation |
| Math recount document | none | none | `math-recount.md` shows the work |
| Prototype design system | ad-hoc `--apex-*` colors | same — only patched text | **`--br-*` tokens ported from acp-v1** · light + dark mode toggle |
| Prototype typography | Inter only | Inter only | Inter + JetBrains Mono (per Apex Bridge) |
| Prototype shell | nav top + apex wrapper | same | sidebar + topbar + main · proper grid · web-component-ready |
| Council voices | 5 | 5 | **6 — Doblin Ten Types added** |
| Strategic tensions | 2 | 3 | **4 (Ten Types vs. Scope Discipline added)** |
| Calls Nicole owns | 3 | 3 | **4 (innovation scope expansion added)** |
| Bradley rail | embedded scores · text-only audit | minor updates | full rerun audit block · math table · Ten Types scorecard · 4 contradictions |

## What the rerun did NOT change

Architectural questions still open (deferred to Tier 2):
- Error state, override interaction, audit trail surface
- ACP-unavailable resilience model
- Trust ladder progression mechanics
- Competitive scan
- MSP segment definition
- Counter-metric baseline

These are real gaps. They are not bugs in the rerun — they are scope for the next iteration.

---

*End of CLAUDE.md — values over rules, always.*
