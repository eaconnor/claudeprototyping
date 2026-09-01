# HANDOFF — QBR/EBR inside ACP

**Date:** 2026-07-28 · **Owner:** Beth Connor · **Status:** context/spec layer, pre-build

## Verified math (grep-checked, not self-reported — 47% rule)

- **Two named MSP-liability lawsuits exist, not three** — *Mastagni Holstedt v. LanTech* (filed
  2024, active) and *Boardman Molded Products v. Involta* (reported 2020). Neither is 2025.
  Neither turned on meeting frequency — one had no written contract, the other's MSP was undone
  by its own marketing copy. `[CS: VERIFIED — public docket / local business press]`
- **No case law, US or UK, tests whether documented client risk-acceptance holds as a defense.**
  No named underwriter treats such documentation as mitigating for premium or claims.
  `[CS: HIGH — well-checked negative finding]`
- **An unresolved internal contradiction:** the 2026-07-14 vision doc's WTP anchor is a single
  Guidepoint quote — "$300+ per user" for ScalePad Lifecycle Manager X. The 2026-07-28 competitive
  scan independently fetched ScalePad's real pricing pages: nothing matches flat per-user pricing;
  everything is per-client or per-PSA-seat-block, entry tier $250/mo. **Do not quote "$300+/user"
  until this is resolved.**
- **The board's own pricing contradicted itself one slide apart:** slide 34 ($2,200 blended,
  20% of 3,000 MSPs, $15M ARR) vs. slide 35 ($800–1,600, 250–500 deals, $5M topline). Slide 35 is
  the deck's own more honest framing ("what is the right GTM here?"). `[CS: VERIFIED — both
  figures appear verbatim in the source deck]`
- **The board thesis as pitched scored ~5% survival under adversarial Idea Chess; a smaller
  version scored ~45–50%.** The spread is the finding, not either single number.

## Named tensions

- **Governance is table-stakes, not a moat** — Auditability scores ✔ for 8 of 10 competitors
  including N-able. Two adversarial voices claimed the opposite and were caught fabricating it in
  the same pass — the honest version reaches the same conclusion (parity, not deficit) honestly.
- **The checkmate risk (recurred across 3 of 5 adversarial voices):** a competitor —
  ConnectWise, Kaseya, or ScalePad — ships an AI QBR/report generator inside the tool MSPs already
  trust with the data, before ACP's control plane earns the foothold to expand into higher-value
  use cases. The wedge dies as a feature; the platform never gets its at-bat.
- **The moat, if there is one, isn't the report — it's judgment, certified over time.** Per the
  SME call: "the data moat is short-lived," and "asking Claude" is now the baseline for
  generation. What's harder to copy: codified Head Nerd expertise + a certification/maturity
  journey + (contingent, legally heavy) an insured liability-transfer mechanism.
- **All demand evidence so far is buyer purchase-intent.** The operator — the person who'd
  actually run this daily — has never been directly studied (Q2). The richest operator account
  in the corpus (Vanessa Chart) is real and verified, but is vendor-selected, n=1.

## The three calls (not mine to make)

1. **Which altitude is ACP actually pitching?** Three named candidates in
   `briefs/acp-problem-statement-2026-07-28.md` — the reframe (agentic business OS, unscored,
   gated on two org decisions), the tactical QBR-only version (~45–50% survival, smaller), or a
   version of the as-pitched control-plane thesis (~5%, not recommended). Design and eng need to
   know which one they're building toward — the UI, the pricing model, and the scope of "done"
   are different for each.
2. **Positioning: delivery-lead (user) or owner (buyer)?** Sharpened but not resolved by the
   relationship-trust-vs-impact-trust distinction found in the competitive scan — see
   `qbr-ebr.context.md` §4–§5.
3. **MVP spine: Env Health assembly, or sever the service-desk dependency first?** Two
   independent voices converged on this once the alpha persona was fixed; still unconfirmed.

Full detail, citations, and the built-in acceptance-criteria table: `qbr-ebr.context.md` (linked
in `scout/`).
