# critic-delta — qbr-prep-sim (post-pass-3 edit review)

**Date:** 2026-07-31 · **Scope:** delta check only, NOT a full pass 4. Triggered by proctor-handoff BLOCK: both prototypes edited after critic pass 3 without re-review.
**Reviewed:** `prototypes/qbr-prep-sim/v2/index.html` (full read this pass) and `prototypes/qbr-prep-sim/index.html` (full read this pass), against the orchestrator's change list, `critic-pass-2-qbr-prep-sim.md`, `critic-pass-3-qbr-prep-sim-v2.md`, and `council-testimony-qbr-prep-sim.md` (read this pass for card fidelity).
**Verification basis:** every quoted string below read directly from the current files [CS: VERIFIED]. Interaction behavior traced in code by critic is [CS: HIGH — traced, not executed]; the orchestrator's post-edit browser check (gate-clear path renders, scoped held-note text appears, zero console errors) is cited as given [D — verified live 2026-07-31, orchestrator].

---

## v2 — per-edit verdicts

| # | Edit | Verdict |
|---|---|---|
| 1 | Backup register row → "released after operator review — J. Garlick, 2026-07-31 · restorability not yet verified" | **CLOSES FAIL 1.** The tier word is gone from the report row; attribution doctrine intact (name + date + release framing); unverified status carried in client language ("restorability not yet verified"), consistent with the RAG cell's designed translation. In the cleared state the report register now contains zero tier vocabulary [CS: VERIFIED — traced `backupRegisterRow`]. The footer's "never render here" claim holds **against the register/gate path**; it does not hold against §06's V15 chips — see ruling below. |
| 2 | §04 so-what rewritten | **CLOSES FAIL 3.** "One decision on this table removes the highest risk your practice carries into self-assessment season: approving the MFA rollout before January…" leads with this client's risk story, sequences the register behind it, and closes on working-agreement framing ("nothing here should ever be news twice"). Clears the Stefanie-worthy bar the other 12 sections already met. No rubric-quoting remains in the lead. |
| 3 | Banner → "~ apx-* components (3 of 5 in use)" | **CLOSES FAIL 2.** Count verified: productbar, sidebar, card instantiated; `apx-badge` and `apx-table` defined but never instantiated anywhere in the views [CS: VERIFIED — full-file read]. The ✓ is now a ~, rendered in the `.part` (amber) style — the honesty instrument is accurate again. |
| 4 | §08 held-note → `heldNote.replace(...)` appending "(report-wide count)" | **SOUND.** Both `heldNote` branches are non-empty strings containing exactly one occurrence of the target substring, so the ternary and single-occurrence `replace` are safe in all four gate states [CS: HIGH — traced]; render confirmed live by orchestrator [D]. Resolves the section-local RISK by the annotate path: the count is still global, but now says so. Zero-held branch reads slightly awkward ("nothing remains held at the confirm-gate (report-wide count)") — cosmetic. |
| 5 | Cover eyebrow → "Prepared for Dibbler & Sons" | **CLOSES the minor RISK.** Template voice gone from the cover. |
| 6 | Council patch | **SOUND — faithful to testimony.** All 9 cards map 1:1 to the testimony's 9 tensions; owners preserved (1 Beth · 2 Beth→Nicole · 3 Beth→Nicole · 4 Beth · 5 Beth · 6 Beth · 7 eng · 8 Beth · 9 Beth / Beth→Nicole); every card ends "routed, not resolved"; no invented content found; synthesis slot untouched ("[0% Beth — fill this in]"); exec summary "Tensions: 9 named…" and rail preview "Council pass 2026-07-31 complete — 9 tensions named…" both present. Fidelity nits, none charged: card 9 compresses the testimony's owner split (Beth for filing / Beth→Nicole for presenting upward) into "Beth · Beth → Nicole" — both owners survive, the rationale doesn't; card 2's "MCP preview shipped" compresses "public preview" — defensible; card 4's "Three voices" matches the testimony's own count. One stale JS comment: line 2370 still says "pending slots" — the slots are filled. Cosmetic. |

## v1 — per-edit verdicts (post-pass-2 fixes + council patch)

| # | Edit | Verdict |
|---|---|---|
| 1 | Banner readiness line → "Readiness score: Bradley rail → (rail-only, [A] device)" | **CLOSES pass-2 FAIL 1.** No score in the banner; pointer carries the [A] label. |
| 2 | 0.4× chip SEED-stamped | **CLOSES pass-2 FAIL 2.** "· SEED DATA — invented 2026-07-31" inline on the chip [CS: VERIFIED — line 851]. |
| 3 | `clearGate` held-note computed from `.reg-row.blocked` count | **CLOSES pass-2 double-clear RISK, with one residue.** All post-interaction states correct in all clear orders [CS: HIGH — traced]. **Residue (NEW, minor):** the *initial* static note still reads "1 further item is held at the confirm-gate" while two register rows are blocked — the static string undercounts by one until the first gate click self-corrects it. Pre-existing framing, half-fixed by this edit. |
| 4 | Rail badge → "readiness: latest critic pass in .bradley-ledger (26/30 at pass 2; scores in copy go stale)" | **SOUND.** A dated historical fact rather than a current-score claim — it cannot go stale the way "22/30" did. **Inconsistency nit:** the council modal's exec summary still carries "Readiness: 22/30 pre-build (critic pass 1)" — dated and honest, but a critic score in UI copy in the same file where the same edit round scrubbed two others. v2's modal points to the ledger; v1's doesn't. |
| 5 | Hard Mode stub attributed (methods-library-matrix) | **CLOSES pass-2 "44 voices" RISK.** |
| 6 | Council patch (same 9 cards) | **SOUND** — identical to v2's; same fidelity notes apply; synthesis slot untouched. |

---

## Ruling — V15 "Estimated/Unverified" chips in §06 vs. the footer

**Not a FAIL-1-family leak. Deliberate, brief-mandated rendering — with a footer sentence that overclaims around it.**

- FAIL 1 was the *register* tier word arriving on the client surface through the gate interaction, on a row whose whole design was tier→client-language translation. That path is closed (edit 1).
- The §06 chips are the V15 rule executed: "renders Estimated/Unverified ALWAYS" — pass 3 scored exactly this rendering as a PASS ("nothing masquerades as telemetry"), and tension #6 routes *how loudly the section wears its tier* to Beth.
- What remains wrong is one sentence: the footer's "internal notes, **tiers**, and admin framing … **never render here**" is absolute copy that its own §06 falsifies three times. The movable part is the footer, not the chips — the brief forbids stripping V15's marking; nothing forbids scoping the footer's claim (e.g., to register tiers and gate framing, with V15's marking named as designed). That wording call is Beth's, and it sits inside tensions #6 and #8 (chip presence on E7), both already routed to her.
- Classification: **NEW ISSUE (copy-level, RISK-grade)** — footer absolutism vs. mandated V15 marking. Named, not fixed.

---

## Score rulings

- **v2: 28/30 stands.** All three pass-3 FAILs are closed, but both docked dimensions were docked for two reasons each, and one reason per dimension survives: Demo-ability 4 (report visual polish past §02 still [CS: UNKNOWN — no full-scroll eyeball or print preview claimed in the edit list; gate item 4 remains open]) and Risk 4 (hi-fi persuasiveness is structural; the footer-vs-V15 copy risk now sits in the same dock). Cleaner 28 — zero FAILs outstanding — same number. **Ship at 28/30.**
- **v1: 26/30 stands, as a dated floor.** All five fixes verified applied; nothing regressed; the fixes only close docks. A formal re-score would likely move Source-fidelity and Risk up, but this is a delta check, not pass 4 — the ledger number of record stays "26/30 at pass 2," which is exactly how the rail now cites it.

## Open items carried (unchanged by these edits)

1. v2 report visual pass: full scroll + one print preview (pass-3 gate item 4) [CS: UNKNOWN].
2. Apex Figma pull behind radius 2/4/16 + Manrope — still unconfirmed [CS: UNKNOWN], carried since pass 2.
3. Footer-vs-V15 wording — Beth's call (tensions #6/#8).
4. v1 initial held-note undercount + v1 council-modal "22/30" line — copy-level nits, batch with the next v1 touch.

## Line counts for the ledger

- `prototypes/qbr-prep-sim/v2/index.html` — **2,426 lines** (`</html>` at 2,426) [CS: VERIFIED — read to EOF this pass]. Matches the orchestrator's claim; +7 over the 2,419 reviewed at pass 3.
- `prototypes/qbr-prep-sim/index.html` — **1,173 content lines** (`</html>` at 1,173; Read reports 1,174 with the trailing blank) [CS: VERIFIED]. Matches the orchestrator's claim.

## Proctor disposition

The BLOCK can lift: every post-review edit is verified against the shipping files, none introduces a FAIL, and the two scores of record (28/30 v2, 26/30 v1-at-pass-2) stand. The three residues above are named for the packet, not gates.

---

## Honor check

- **Judgment held by:** Beth. The V15-vs-footer wording, whether the residual nits gate anything, and when the packet ships are hers. This document names and stops — no fixes applied; critic cannot and did not write or modify any file (this report was written to disk by the orchestrator).
- **Mechanics performed:** full read of both current files against the orchestrator's change list and both prior scorecards; council-card fidelity checked line-by-line against the testimony's nine tensions.
- **[CS: VERIFIED]** — every quoted string, count, and line number above read directly from the current files this pass. **[CS: HIGH]** — `replace()` behavior and gate-state traces, traced not executed. **[D — orchestrator]** — the post-edit live render check, cited as given. **[CS: UNKNOWN]** — report visual polish past §02; the Apex Figma pull; print output.
- **No validation claimed.** PROCEED-FLAGGED carried unchanged. 28/30 and 26/30 are build-compliance scores; the Q2 study remains the only thing that moves the evidence.
