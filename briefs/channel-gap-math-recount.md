# channel-gap — math recount

Three numbers, computed by hand from the tagged claims actually written into `channel-gap.brief.md`. Restated evidence de-duplicated once (e.g. "no frontend exists" is one claim with two independent read-dates behind it, not two claims).

---

## Number 1 — World-claims ratio (lead number)

Claims about the actual state of the system, schema, code, market, or a named decision — excludes meta statements about the brief's own status (OKR fields unsourced, Tier-1 fidelity being a judgment call, Structure gap being still-open).

| # | Claim | Tag |
|---|---|---|
| 1 | Gateway generic infra (auth_type provider classes, envelope encryption, daily sync) | R |
| 2 | No vendor adapter hardcoded in gateway directory | R |
| 3 | Gateway code entirely inbound-direction plumbing, no outbound delivery mechanism | R |
| 4 | No frontend exists anywhere in codebase (independently re-verified 2026-08-12 + 2026-09-01, counted once) | R |
| 5 | Apex Bridge is not a candidate real channel (confirmed by Beth directly) | R |
| 6 | `notification_recipients` schema: email/actor only, no sms | R |
| 7 | Channel is one of four open, unchecked CHORES.md decisions as of 2026-09-01 | R |
| 8 | Customer Engagement is a separate adjacent decision; 4 options named, only option 2 built | R |
| 9 | Workshop 2026-08-06 directional call (SMS out / PSA ticket in) + real inbound MSP precedent exists | R |
| 10 | Bidirectional workability is an extension beyond the cited inbound-only precedent | A |
| 11 | Blueprint §13's cited stat (98% open / ~3min / ~3-day) not found on mspprocess.com on direct fetch | ? |
| 12 | `apps/fake-mcps` directory freshness discrepancy — stale snapshot vs. aspirational doc, unresolved | ? |
| 13 | Footnotes 42/43/50 text itself, directly quoted (underlying synthesis flagged WOBBLY, single-source) | R |
| 14 | CloudRadial marketing: always-on client-facing portal claim | D |
| 15 | Tension: CloudRadial claim vs. July footnote 50 finding — unresolved | ? |
| 16 | vCIOToolbox current docs: shipped 2-way Autotask ticket/opportunity sync | D |
| 17 | Tension: vCIOToolbox sync claim vs. footnote 43 "future tense" — unresolved, possible scope mismatch | ? |
| 18 | Other competitor delivery claims (ScalePad, myITprocess) — vendor self-report | D |
| 19 | No tool in the five-vendor pool combines client-facing delivery + PSA writeback | D |

**Bucket totals:** R = 10 · D = 4 · A = 1 · ? = 4 · **Total = 19**

**[A]+[?] = 5 / 19 = 26.3%** — under the 30% ready threshold.

This is down from the prior pass's self-reported 57–62%, and the drop is real, not a rounding trick: 9 of the 10 `[R]` claims above were tagged `[?]` last time because the prior spec pass lacked exact file paths and correctly declined to guess — it wasn't wrong about the evidence, it was blind to it. Direct file access converted those 9 from unknown to verified. One genuine downgrade risk remains live: claim 9/10's SMS-precedent split, which the prior pass couldn't have surfaced cleanly either way.

---

## Number 2 — Test-plan readiness

Gate 3 asks: tested how, by whom, what counts as done. Named candidate channel types: SMS, email, portal, PSA-writeback (4).

**Candidates with a defined test plan, pilot, or acceptance criteria: 0 / 4 = 0%.**

This is not a gap to close before shipping this brief — it's the correct state for a Tier 1 Concept brief under `PROCEED-FLAGGED`, where `machine_behavior` explicitly forbids recommending or validating any candidate. Flagging it as 0% here so a downstream reader doesn't mistake silence for oversight.

---

## Number 3 — Inflated-with-meta-TODOs

What the ratio becomes if the brief's own meta-status items get folded into the world-claims count instead of kept separate — the mistake the 47% rule exists to catch, run in the direction of over-counting `[?]` rather than under-counting `[R]`.

Meta items added: OKR objective unsourced `[?]`, OKR key result unsourced `[?]`, counter-metric unsourced `[?]`, Structure (org-ownership) gap still open `[?]` — 4 additional `[?]` claims about the brief/project's own state of readiness, not about the system or market.

New total: 19 + 4 = 23. New `[A]+[?]`: 5 + 4 = 9.

**9 / 23 = 39.1%** — crosses the 30% threshold.

The gap between 26.3% and 39.1% is the entire point of keeping these separate: mixing "we don't know what should be built" (world uncertainty, legitimately `[?]`) with "we haven't written an OKR yet" (process debt, a TODO wearing a `[?]` costume) makes a brief look less ready than its actual evidence supports, or — run the other direction — makes a thin brief look more ready than it is if someone counts meta-TODOs as resolved instead of counting them at all. Report Number 1 as the lead number. Number 3 exists to show why Number 1 needs a boundary rule, not to replace it.

---

## Honor check

Files actually opened this pass, by direct Read tool call, absolute path:

1. `/Users/bethconnor/Library/CloudStorage/OneDrive-N-able/Bethproto/scout_input/channel-gap-01-blueprint-ten-types-and-infra.md`
2. `/Users/bethconnor/Library/CloudStorage/OneDrive-N-able/Bethproto/scout_input/channel-gap-02-chores-open-item.md`
3. `/Users/bethconnor/Library/CloudStorage/OneDrive-N-able/Bethproto/scout_input/channel-gap-03-gateway-code-and-repo-structure.md`
4. `/Users/bethconnor/Library/CloudStorage/OneDrive-N-able/Bethproto/scout_input/channel-gap-04-qbr-ebr-ux-footnotes-psa-writeback.md`
5. `/Users/bethconnor/Library/CloudStorage/OneDrive-N-able/Bethproto/scout_input/channel-gap-05-competitor-delivery-patterns.md`
6. `/Users/bethconnor/Library/CloudStorage/OneDrive-N-able/Bethproto/briefs/qbr-system-blueprint-2026-08-04.md` (lines 381–406, §15)

No other file was read to produce this brief. Every `[R]` tag above traces to one of these six reads; no claim was upgraded past what its source file's own confidence marker (`[CS: VERIFIED]`, direct quote, or explicit scout framing) supported.
