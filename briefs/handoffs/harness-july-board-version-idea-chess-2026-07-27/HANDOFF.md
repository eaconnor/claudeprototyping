# Idea Chess — Baseline Score

## Harness / ACP Long-Range Plan — **July Board Meeting Version**

**Scored:** 2026-07-27
**Source:** `ACP LRP July 2026.pptx` (59 slides) — the deck presented to the board
**Skill:** Band Protocol vision skill, Step 6.5 (Idea Chess)
**Method:** 5 parallel adversarial council voices (Sonnet) → cross-ship synthesis (Opus 4.8)
**Framing:** Scored as **one complete idea** (a thesis), not five separable bets — per Beth's instruction.

> **This is the baseline.** Future runs score drift against these numbers. The idea did not change between the board room and this score; only the adversary did.

---

## The score

| | Survival | Confidence |
|---|---|---|
| **As pitched** — "system IT runs on," $15M ARR Y3 @ 20% attach, governance = moat | **~5%** | [WOBBLY — directional floor, not a measurement] |
| **In some viable form** — a real coworker business, likely partner-fronted, ~$5M scale, feature-in-stack not control-plane | **~45–50%** | [WOBBLY] |

**The spread is the finding.** The idea almost certainly survives — as the smaller thing slide 35 already drew ($800–1,600/mo, $5M topline). It almost certainly does *not* survive as the thing slide 34 pitched ($2,200/mo blended, $15M, "the system IT runs on"). The deck sells the high-ambition version; the version that clears the board is the modest one buried one slide later.

**Independence caveat (required):** 5 required assumptions, three independently scored ≤0.20 by the skeptics, two of those the *same* root failure. A naive multiply (~0.1%) overstates collapse; a single-factor read overstates survival. ~5% is the honest de-correlated floor for the full thesis.

---

## Honor-code flag — a fabrication caught in the pass itself

Two adversarial voices (competition, execution) claimed N-able scores "◐ LIMITED" on Auditability and is "behind 8 of 9 competitors." **Grep-verify against slide 25 (extract lines 667, 672):** N-able scores **✔** on Auditability; only NeoAgent and ZenZero score ◐. The skeptics invented a deficit to refute harder.

The *valid* argument is the opposite shape: Auditability is ✔ for **8 of 10 players including N-able** → it's **table-stakes, not a moat**. Same conclusion, honest evidence. [CS: VERIFIED — slide 25, line-checked]

*Lesson carried into the baseline: the adversarial pass hallucinated under pressure. The number survives because the synthesis grep-checked it, not because the skeptics were right.*

---

## The board as an assumption chain

| # | Required assumption | Strongest refuting move | Holds |
|---|---|---|---|
| 1 | ACP is a coherent *product*, not 5 names | Harness / N-zo+AI / Resilience AI / ACP / Workforce all appear as "the one thing"; slide 51 budgets ACP *and* "Headless Agent" as separate lines | 0.15 |
| 2 | 8 devs ship a governed multi-tenant control plane by Dec 2026 | ~20% MVP (slide 32); flagship QBR needs the *deepest* 6–8 tool integration; integrations don't land till "Minimum Delight," past first ship (slide 26) | 0.15 |
| 3 | 20% of MSPs pay $2,200/mo *incremental* | Only access datapoint (slide 13, n=120) says **48% expect it bundled, 37% add-on**; WTP anchor is n=1 (Kenneth/ScalePad $300+/user/mo) | 0.15 |
| 4 | Governed execution is a durable moat | Auditability ✔ for 8 of 10 competitors (slide 25); lead wedges are deliberately *read-only* — the moat doesn't apply to what's sellable today | 0.20 |
| 5 | Read-only QBR/RCA is a defensible wedge | "No autonomy risk" (slide 15) = low replication bar; a PSA vendor bolts an LLM over the same MCP data in a quarter | 0.25 |

---

## Where the wagon falls (Oregon Trail)

- **Earliest stall — DEFINE:** "what am I approving?" Slide 3 says pricing and build-vs-partner are *not decided today*, yet slides 34 / 45 / 28 present a priced model, an M&A target, and an in-flight build. Leadership-fixable, but unresolved on the page.
- **Most losing runs fall at — ADOPT:** the **Sept 1 design-partner QBR preview** (slide 32) — the moment a real price meets "we expected this bundled." First external test with dollars in the room.
- **Deepest hole — DEFEND:** runs that clear adoption still erode at the moat — governance is parity, the wedge is read-only.

---

## The pricing contradiction (verified)

| | Slide 34 (board-ready) | Slide 35 ("back of envelope") |
|---|---|---|
| Price | $1,500 / $2,000 / $2,500+ tiers · $2,200 blended | $800 / $1,250 / $1,600 |
| Attach / volume | 20% of 3,000 = 600 MSPs | 250–500 deals |
| Revenue | **$15M ARR** Y3 | **$5M** topline, 12mo |

[CS: VERIFIED — both figures appear verbatim; extract lines 907–932 vs 938–943.] These are two different pricing universes one slide apart. Slide 35's own framing ("What is the right GTM here? Impediments?") reads as the team's honest number.

---

## Checkmate (recurred across 3 of 5 voices)

> A competitor — ConnectWise, Kaseya, or ScalePad — ships an AI QBR/report generator *inside the tool MSPs already trust with the data*, before N-able's control plane earns the foothold to expand into higher-autonomy, higher-margin use cases. The wedge dies as a feature; the platform never gets its at-bat.

---

## Cost of this pass

FEAST — ~200k tokens (5 Sonnet skeptics + Opus synthesis) ≈ a meaningful pour of water. Logged per BITE framework §2.
