# Math recount — qbr-ebr-prototype.brief.md

Per the 47% rule: every ratio in the brief is grep-verified here, claim by claim, before it ships.

## Gate 1 — Problem (10 claims)

| # | Claim | Tag | Bucket |
|---|-------|-----|--------|
| 1 | Prep cost 3–7h/quarter (Stefanie Hammond boot-camp figure) | R | world-claim, sourced-but-vendor-relayed |
| 2 | Prep cost ~4–5h/EBR (Vanessa Chart self-report) | R | world-claim, n=1 |
| 3 | Vanessa Chart persona verified real | R — CS: VERIFIED | world-claim, sourced |
| 4 | "Craig" buyer persona | ? | world-claim, unverified |
| 5 | Client exec persona (via Vanessa's account) | R | world-claim, single-lens |
| 6 | All operator evidence is n=1 vendor-selected | A | world-claim, acknowledged bias |
| 7 | Stefanie Hammond's 15-tab template is real, primary source | D | world-claim, document-grounded |
| 8 | Business-value framing is the operative message | R | world-claim, sourced |
| 9 | Value-Webs gives/gets (client, N-able) | A | world-claim, inferred |
| 10 | "Documented risk-acceptance shields MSP legally" | ? | world-claim, explicitly downgraded |

**Gate 1: 4/10 = 40% [A]/[?]**

## Gate 2 — Right thing (9 claims)

| # | Claim | Tag | Bucket |
|---|-------|-----|--------|
| 1 | Candidate 2 scope choice is this brief's own, not organizational | A | world-claim |
| 2 | Candidate 2 = fastest-to-commoditize shape (board Idea Chess, 3/5 voices) | R — CS: VERIFIED | world-claim, sourced |
| 3 | No OKR/KR/counter-metric exists in corpus | ? | test-plan-readiness |
| 4 | Sustaining read weakened (no shipping competitor found) | R | world-claim, thin |
| 5 | Disruptive read supported only by n=1 counter-example | R | world-claim, thin |
| 6 | 6/9 anti-QBR sentiment, SEO-genre caveated | A | world-claim, directional only |
| 7 | Positioning fork unresolved | A | world-claim, open |
| 8 | Q2 (operator-mechanism vs. destination) unanswered | ? | world-claim, named gap |
| 9 | WTP anchor self-contradictory ($300+/user vs. $250/mo entry) | A | world-claim, unresolved |

**Gate 2: 6/9 = 67% [A]/[?]** — **Correction 2026-07-28 (Bradley verification gate):** originally
miscounted as 7/9 (78%), by misreading rows 4 and 5 (tagged `R`, not `A`/`?`) as open claims while
dropping row 8 (genuinely `?`) from the tally. Correct A/? set: rows 1, 3, 6, 7, 8, 9 = 6 rows.

## Gate 3 — Built right (6 claims)

| # | Claim | Tag | Bucket |
|---|-------|-----|--------|
| 1 | 8 Musts + Built-in Tests carried forward verbatim from source | D | world-claim, sourced |
| 2 | Only 2/8 Built-in Tests runnable at Tier-1 fidelity | ? | test-plan-readiness |
| 3 | Job-shop/production-line split of 15 tabs already done in source | D | world-claim, sourced |
| 4 | Confirm-gate mechanism already exists in code (Value Ledger) | D | world-claim, sourced |
| 5 | No usability-test plan exists for this prototype | ? | test-plan-readiness |
| 6 | "Done" criteria for the prototype is this brief's own proposal | ? | test-plan-readiness, meta-TODO |

**Gate 3: 3/6 = 50% [A]/[?]**

## The three numbers

**Correction 2026-07-28 (Bradley verification gate):** this whole section originally reported 56%
as the world-claims headline. That number was built on the same Gate‑2 miscount fixed above (two
`R` rows wrongly read as open, one real `?` row dropped) — it wasn't independent noise, it was the
same bad count propagating forward. Recomputed cleanly below.

1. **World-claims ratio (lead number): 43%**
   Bucketing only "world-claim" rows (excluding the "test-plan-readiness" rows — Gate 2 row 3,
   Gate 3 rows 2/5/6):
   - World-claims total: Gate 1 (10, all world-claims) + Gate 2 (8, excl. row 3) + Gate 3 (3:
     rows 1, 3, 4) = **21**.
   - World-claims A/?: Gate 1 rows 4, 6, 9, 10 (4) + Gate 2 rows among world-claims that are A/? —
     rows 1, 6, 7, 8, 9 (5; rows 2, 4, 5 are `R`, correctly excluded) + Gate 3 (0 — rows 1/3/4 are
     all `D`) = **9**.
   - 9/21 = **42.9% ≈ 43%**. **This is the number to quote: 43%, not 56%, not 78%, not 40% alone —
     the blended, de-duplicated world-claims ratio.**

2. **Test-plan readiness: 25%**
   Numerator: Musts with a Built-in Test runnable at Tier-1 fidelity = 2 (dual-surface structural
   check, overclaiming-language check).
   Denominator: total Musts = 8.
   2/8 = **25%**.

3. **Inflated number (do not quote as headline): ~63%**
   This number results from double-counting the 11 open riskiest-assumption rows in
   `qbr-ebr.context.md` §5 as separate world-claims, on top of the 21 already counted above, without
   checking for overlap — several of those 11 rows (WTP contradiction, positioning fork, Q2) are
   **the same underlying claims already tallied** in Gate 2 rows 7, 8, 9. Naively summing
   (9 + 11) / (21 + 11) = 20/32 ≈ **62.5%**. This is wrong for the same reason the original 56%
   headline was wrong in the other direction: **it counts the same open question twice** — once as
   a Gate-tagged claim, once as a riskiest-assumption row. Naming this spread explicitly, per the
   47% rule's own reason for existing: a sloppier recount produces a scarier, wrong number, and the
   wrong number is the one that looks more rigorous, not less. **Do not quote ~63% as the headline
   ratio — 43% is the correct, de-duplicated number.**

## Verification note

The original version of this file was authored in the same pass as the brief itself, by the same
spec agent — not an independent post-hoc grep by a second party, and that limitation was stated
here rather than concealed. **That harder pass has since happened:** Bradley, spawned as the
pipeline's verification gate, re-derived the Gate 2 tally independently and caught a real error
(rows 4/5 misread as open, row 8 dropped), which cascaded into a wrong world-claims headline
(56% instead of the correct 43%). This is the 47% rule doing its job — the check caught the
thing it exists to catch. Corrected 2026-07-28; see `prototypes/acp-qbr-ebr/.bradley-ledger.md`
for the dated verification entries.
