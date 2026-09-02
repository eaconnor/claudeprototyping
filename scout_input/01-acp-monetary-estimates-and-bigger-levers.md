# ACP — Monetary Estimates & "What Makes It Bigger" Levers
Compiled 2026-09-02 by Scout, from direct read of:
briefs/acp-idea-chess-play-to-win-2026-07-20.md · briefs/acp-vendor-deep-dives-and-idea-chess-2026-07-20.md ·
briefs/acp-why-nable-build-map-2026-07-14.md · briefs/acp-concept-brief-2026-07-20.md ·
briefs/acp-problem-statement-2026-07-28.md · briefs/idea-chess-offering-b.md · briefs/idea-chess-offering-c.md ·
briefs/idea-chess-offering-d.md · briefs/acp-v1-council-report.md · scout_input/acp-tam-grounding.md ·
scout_input/acp-tam-control-plane.md

Purpose: raw material for sharpening the riskiest assumption from "people will buy the spec'd version"
to "we can build a sustainable business off of this." No synthesis — ingredients only.

---

## MONETARY ESTIMATES

| Figure | What it is | Source (file + section) | [CS:] | Real citation or [A]/[?] |
|---|---|---|---|---|
| TAM floor $180M–$1.35B/yr | Bottoms-up per-tech pricing model | acp-tam-grounding.md §"TAM BAND" | LOW | [A] — price input unsourced |
| MAX-TAM $250M–$4.3B+/yr | Share-of-services ceiling; $4.3B = "1% of $430B managed-services base" framing | acp-tam-grounding.md §"MAX-TAM BAND" | LOW | [A] — "LOAD-BEARING FRAMING" per doc |
| $1B floor vs $4.3B ceiling fork | Pricing-model fork as restated in concept brief | acp-concept-brief-2026-07-20.md #4 | LOW | flagged by the brief itself as "not currently a linked, citable source... treat as directional only" |
| Offering B standalone TAM: $0.5B–$9.6B, midpoint ~$3B | Bottoms-up platform-seat band, 3 scenarios | acp-tam-control-plane.md §"ACP OFFERING B — TAM BAND" | LOW, WOBBLY | [A] — 2 of 3 inputs CS:UNKNOWN |
| Agent Observability & Governance: $1.23B(25)→$1.68B(26)→$8.62B(31), 38.69% CAGR | Closest analyst category to Offering B | acp-tam-control-plane.md §1 (Mordor) | MEDIUM, WOBBLY | real citation, single syndicated shop authored category |
| AI Agent Orchestration Platform: $13.7B(26), 23% CAGR to 2035 | Broader adjacent category | acp-tam-control-plane.md §1 (Dimension) | LOW, WOBBLY | real citation |
| vCISO market: ~$1.4B–$2.5B(24)→~$4B–$7B(early 2030s) | Consensus band across 4 firms, wide spread | acp-tam-grounding.md §2 | MEDIUM | real citations |
| MDR/SOC market: ~$4B–$6B(26), 17-23% CAGR | Context for IR/RCA offering | acp-tam-grounding.md §5 | MEDIUM | real citations |
| AIOps: ~$14B–$19B(26), 21-30% CAGR | Ceiling reference, not the TAM | acp-tam-grounding.md §3 / tam-control-plane §2 | MEDIUM | real citations |
| Global managed-services: ~$370B–$437B(26)→$700B–$1.27T(31-35) | Buyer-universe context, NOT the software TAM | acp-tam-grounding.md §1 | MEDIUM | real citations |
| Atera per-tech: ~$129–$219/tech/mo | Only public per-tech pricing benchmark | acp-tam-control-plane.md §4 | HIGH, WOBBLY (single vendor) | real, verifiable |
| Agent-seat ARPU assumption: $40/$100/$200 per tech/mo | Offering B pricing scenarios | acp-tam-control-plane.md A3 | UNKNOWN | [A] — "no price precedent...MOST FRAGILE" |
| Billing-mechanism split: revenue-share ~0.02% vs flat-fee-by-practice-size ~14% survival | vCIO/vCISO packaging pricing choice, 700x difference | acp-concept-brief-2026-07-20.md #4, sourced acp-word-sketches-four-complete-2026-07-15.md Sketch 4 (NOT directly read this session) | MEDIUM — unverified | real citation to unread file — verify before repeating |
| Vikram Thakar WTP: "10–15% of my SOC running expense" | IR/RCA per-incident/% pricing anchor | acp-concept-brief-2026-07-20.md #3 (Guidepoint) | MEDIUM | real quote, n=1–2, not projectable |
| Derek WTP: "max ~$300/mo flat" | Ticket Triage pricing ceiling | idea-chess-offering-d.md §Value-Based Pricing | MEDIUM, single-source | real quote |
| Jonathan Blakey: governance-as-bill-enablement (no $ figure) | Single unprompted quote framing B's monetization | idea-chess-offering-b.md §4 | MEDIUM | real quote, single-source |
| Board pitch (Candidate 3): $2,200/mo blended, $1,500–2,500+ tiers, 20% attach of 3,000 MSPs, $15M ARR Yr3 | As-presented board model | acp-problem-statement-2026-07-28.md Candidate 3 (slide 34) | VERIFIED (doc's own line-check) | real citation — contradicted one slide later, do not quote as stable |
| Board "back of envelope" (Candidate 3, slide 35): $800–$1,600, 250–500 deals, $5M topline | Deck's own more honest framing, same pitch | acp-problem-statement-2026-07-28.md Candidate 3 | VERIFIED | real citation — proves the two-pricing-universe contradiction |
| Board Idea Chess survival: ambitious ~5%; tactical QBR-only ~45–50% "in some viable form," ~$5M scale | Board's own baseline scoring | acp-problem-statement-2026-07-28.md Candidates 1–3 | MEDIUM | asserted, not independently re-derived |
| Package naive survival floors: P1 ~14% · P2 ~1.2% · P3 ~0.9% · P4 ~0.55% · P5 ~0.43–0.64% · Control Plane standalone ~0.35% | Idea Chess naive products, directional not forecast | acp-concept-brief-2026-07-20.md; idea-chess-offering-b.md §4 | MEDIUM | [A] board estimates |
| Council MSP-savings calc: $32/hr × 46% FP rate × 960 alerts/day × 12min = ~$33,600/mo per MSP | Triage ROI estimate | acp-v1-council-report.md §1 JTBD | MEDIUM | math checkable; inputs are 3rd-party vendor/survey stats |
| Council hypothetical N-able ARR: 2,500 customers × $3,860/mo = $115.8M ARR | Constructed pricing scenario (10% of 25,000 MSP base) | acp-v1-council-report.md §"ROI to N-able" | LOW | [A] — explicitly a scenario, not a sourced number |

## WHAT MAKES IT BIGGER — LEVERS

| Lever | What it does | Source | [CS:] | [A]/[?] |
|---|---|---|---|---|
| Pricing-model choice: per-tech-tool vs share-of-services | Determines floor (~$1B) vs ceiling (~$4B+) | acp-tam-grounding.md; acp-idea-chess-play-to-win-2026-07-20.md Months 0-1 | MEDIUM | [A]/[?] unresolved |
| Billing mechanism for vCIO/vCISO: flat-fee-by-practice-size vs revenue-share | 700x survival difference (14% vs 0.02%) | acp-concept-brief-2026-07-20.md #4 | MEDIUM, unverified | see flag |
| Buy/partner cross-vendor normalization moat instead of building | Collapses Branch A's hardest multi-quarter line | acp-idea-chess-play-to-win-2026-07-20.md; acp-concept-brief-2026-07-20.md fragments | LOW | [A] |
| BUY Thread (getthread.com): 725+ MSP partners, 15,000 businesses, $8M raised, ConnectWise/Autotask/HaloPSA integrated | Removes Triage competitive threat + unlocks Package 5 PSA integration | acp-idea-chess-play-to-win-2026-07-20.md "BUY"; acp-vendor-deep-dives Part 1 | MEDIUM | vendor-stated scale; deal itself unvetted [?] |
| Vendor/Expert marketplace + take-rate | Two-sided distribution/revenue-share lever for B's ceiling | idea-chess-offering-b.md H9 | LOW | [A] — cold-start, no committed supply |
| Installed-base cross-sell (tens of thousands of existing MSPs) | Upsell existing buyer instead of acquiring new one | acp-why-nable-build-map-2026-07-14.md §1 item 5 | LOW | [?] — number itself unverified |
| Package portfolio into vCIO/vCISO flat-fee-by-practice-size tiers | Reaches for the larger-ceiling side of the pricing fork | acp-idea-chess-play-to-win-2026-07-20.md Months 8-12; acp-concept-brief-2026-07-20.md #4 | LOW | [A] |
| Reframe Control Plane from "seat under" to "flagship," sold as bundle | Changes what "winning" means for whole portfolio | acp-idea-chess-play-to-win-2026-07-20.md "THE REFRAME" | MEDIUM (secondhand Nicole quote) | [A] |
| Candidate 1 reframe: Head Nerd corpus → certification engine → insured liability transfer → owned distribution | Four compounding locks positioned as harder-to-copy escape from commoditization | acp-problem-statement-2026-07-28.md Candidate 1 | LOW | [A]/[?] — unscored, zero buyer validation |
| Insurer-as-buyer (not the MSP) for IR/RCA or Tabletop | Different revenue path, financial-incentive alignment | acp-concept-brief-2026-07-20.md fragments table | LOW | [A] — undercut by 12-24mo underwriting cycles |
| Certification & training vs. "I could build that myself" | Turns lost-sale objection into a segment | acp-concept-brief-2026-07-20.md fragments table | LOW | [A] — collides with "no knowledge gated by money" (§8) |
| Per-run/usage metering on top of platform seat | Additional revenue layer, unpriced upside | acp-tam-control-plane.md A4 | FABRICATION RISK if numeric | [?] — explicitly unquantifiable, no benchmark |

## FLAGS
- Grep-verifiable arithmetic (inputs, not extrapolation): $33,600/mo council figure; TAM bottoms-up math in the two tam- files.
- Asserted, not verified this session: "0.02% vs 14%" pricing split and "$4.3B ceiling" — both cited to acp-word-sketches-four-complete-2026-07-15.md, not in this read list. Do not repeat as settled until read directly.
- Single-source, do-not-project: Derek $300/mo; Vikram 10-15% SOC; Jonathan governance-as-bill-enablement — each one Guidepoint interviewee.
- Internally contradictory on its face: board $15M ARR/$2,200mo model vs. same deck's $5M-topline "back of envelope" slide one slide later.
- WOBBLY (docs' own tag): all AgentOps/agent-governance category TAM — second-tier syndicated shops, no Gartner/IDC/Forrester number exists.
- [?] unresolved, not fabricated: install-base cross-sell number, marketplace take-rate, per-run metering price.
