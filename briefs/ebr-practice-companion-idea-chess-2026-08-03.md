# Idea Chess — Sketch 1 · The EBR Practice Companion

**Target artifact:** `briefs/concept-sketches-qbr-round2-2026-07-31.md`, Sketch 1 (lines 19–33), cross-referenced against its own scoring footnote (line 70) and its own research backlog (lines 76–95).
**Method:** `briefs/idea-chess-fleet-synthesis-2026-07-14.md`
**Format precedent:** `briefs/idea-chess-qbr-rerun-2026-07-31.md`
**Note:** Sketch 1 is the round-2 restatement of Package 3 "re-framed confidence-first" (line 20) — but it is scored here fresh, from this artifact's own text, not carried over from the prior board's 3-PC entry (which used transcript timestamps this file doesn't repeat). Where the two diverge, the divergence is named, not smoothed over.

---

## Required positions (derived from what this artifact needs to clear, not a fixed set)

Sketch 1 makes five distinct claims that each have to hold for the concept to survive contact: that the idea has real signal beyond its own author (**Genesis**), that its non-novel generation features actually ship (**Ship**), that its one genuinely new mechanic — rehearsal + fading scaffold — is buildable as described (**Build**), that the artifact it produces is legally safe to hand a client (**Defend**), and that a field operator (not the person who designed the framework) actually wants and uses it (**Adopt**).

| Position | [A] P | Reasoning (cited to the target file) |
|---|---|---|
| **Genesis** — the confidence-first framing is real product signal, not one trainer's idiosyncratic wish list | **0.50** | Line 28: "Lewis asked for 'her as an agent,' and she wrote the feature list herself unprompted `[CS: VERIFIED]`." That's a strong, verified authorship signal — a domain expert asked to encode herself, encoding herself. But it is n=1 by the file's own admission: the death squares (line 30) name this directly — "confidence-transfer is evidenced only from the trainer's seat." Verified enthusiasm from the framework's author is not evidence the framing generalizes to the people who'd actually sit in the CFO's room. |
| **Ship** — the three generation features (consequence-grammar drafting, red/yellow/green grading, two-register scripting) ship in v1, not just data population | **0.30** | Line 26 bundles five capabilities as one sentence — "drafts the register... grades it... scripts the talking points... rehearses the five hardest questions" — with no differentiated build status per feature. The friction claim underneath this ("prep costs hours they don't have") is itself tagged `[CS: LOW — echo, directional]` at line 22 — thin sourcing for the very quantity these features are supposed to solve for. Nothing in this file distinguishes "cheap to generate" (drafting) from "hard to design" (grading, scripting) the way the rerun's Package 3 analysis did for the parallel wishlist — that discrimination is missing here, which is itself a risk, not just an omission. |
| **Build** — rehearsal mode + fading scaffold are real, specced interaction mechanics, not a metaphor for a report generator | **0.25** | This is the concept's one genuinely novel mechanic, and the file itself flags it unbuilt: death square W4 (line 30) — "if the scaffold doesn't fade, we automate away the reps that build the skill." The scoring footnote (line 70) independently confirms: "dies at Build — the rehearsal/fading-scaffold interaction design doesn't exist yet." This is death pattern **#6 — "the build built the substrate, not the demanded thing"** (fleet synthesis, line 16): Runbook Engine and Value Ledger exist; a rehearsal/fading UI does not. |
| **Defend** — the auto-drafted, consequence-grammar register clears a workable liability posture | **0.35** | Line 30: "The counsel gate — everything drafted into the register inherits the liability weight." This is death pattern **#5 — "the accuracy/liability asymmetry"** (fleet synthesis, line 15) applied directly: a wrong number in a client-facing register is asymmetric and unrecoverable, and this file names the gate as open, not resolved. No defensibility tiering is described anywhere in Sketch 1's own text (contrast Sketch 3, line 62, which at least names the ledger/runbook substrate — Sketch 1 doesn't). |
| **Adopt** — a field operator (not the framework's trainer-author) wants the mechanism, not just the destination | **0.30** | Line 30, verbatim: "Q2 unfielded — the operator has never been studied." This is death pattern **#2 — "destination ≠ solution, and the operator was never studied"** (fleet synthesis, line 12) by name and by the artifact's own admission. The file also never fills in the bet (line 32: "`[0% Claude — fill this in]`"), meaning WTP — death pattern **#4, "nobody pays for it as a line item"** (fleet synthesis, line 14) — isn't even attempted here; Adopt is scored on desirability alone, which is generous. |

**Naive survival** = 0.50 × 0.30 × 0.25 × 0.35 × 0.30 = **~0.39%**

**Dies first at:** **Build** (0.25) — the rehearsal-mode/fading-scaffold mechanic, confirmed as the lowest position both by this derivation and by the artifact's own scoring footnote (line 70).

---

## Correlation flag (stated, not modeled)

**Genesis, Ship, and Adopt are not independent — they are one evidence problem counted three times.** All three trace back to the same single source: Stefanie is simultaneously the person whose enthusiasm grounds Genesis (line 28), the person whose wishlist grounds Ship (line 26 is a direct paraphrase of her wishlist, not independently validated), and the only voice on whether confidence-transfer lands at all — a gap the file names outright at line 30 ("confidence-transfer is evidenced only from the trainer's seat"). Multiplying these three as if they were three separate risks overstates how much independent evidence actually exists. Treat 0.39% as an **optimistic ceiling**; the correlated version is probably lower, the same way the rerun treats Package 5's three liability-adjacent positions as one question asked three ways (rerun, line 79).

A secondary, weaker correlation: **Build and Defend** partially move together — the more the rehearsal/grading mechanic actually ships as real interaction design (raising Build), the larger and more quotable the artifact it produces becomes (line 30's own observation that a red/yellow/green grade is "a stronger, more quotable claim than a plain data table" — echoed from the parallel Package 3-PC analysis, not restated in this file, but structurally identical to what's described at lines 26–30 here), which tends to lower Defend, not raise it. The two are not scored as fully independent in principle, only in this naive product.

---

## Death patterns not primarily in play (named for completeness)

- **Pattern #1 (data-egress wall)** — largely inapplicable. Sketch 1's data sources are implied first-party/N-able-native ("first-party telemetry for every pull," line 28), not cross-vendor pulls. This is the one death pattern the concept's own framing avoids by design.
- **Pattern #3 (buy-vs-build/commoditization)** — partially in play but not named in the artifact itself. Grading and two-register scripting (line 26) are the kind of generative features a competitor could plausibly cheaply replicate; the file's counter-claim is distribution, not defensibility — "the Head Nerd enablement channel... as a distribution vector no competitor has" (line 28) — which is a go-to-market moat, not a product moat, and doesn't fully answer the commoditization risk.

---

## Single test that would move the floor most

**Not** a narrow fix to Build alone — the file names its own answer to this, and it's better than anything I'd derive independently. **R2** (lines 88, table row): *"Q2 — the operator study: mechanism or destination? Gate = seatbelt or nag? Do the four confidence mechanisms land?"* — instrument: *"Frankenprototype draft-landing in front of Vanessa-seat operators; watch edit-vs-send behavior"* — and the file itself lists what it unlocks: *"Sketch 1, the confirm-gate design, the JTBD/SDT fork."*

This single test is the highest-leverage move precisely because of the correlation flag above: putting a rehearsal/grading mock in front of real field operators (not Stefanie) simultaneously tests whether Genesis generalizes past the trainer, whether Ship's confidence mechanisms actually land, whether Build's fading-scaffold behaves like support or like an unrequested layer (directly answering W4, line 30), and whether Adopt clears Q2 outright. It is cheaper than the counsel review (R1, line 87) that would move Defend, and it moves four of five positions at once rather than one.
