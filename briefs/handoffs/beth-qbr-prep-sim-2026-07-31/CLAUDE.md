# CLAUDE.md — orientation for any Claude session opening this folder

**Packet:** qbr-prep-sim handoff · assembled 2026-07-31 by Bradley (pipeline gate)
**Recipient:** Beth Connor (Apex UX Manager, N-able) — internal audience
**Regime:** PROCEED-FLAGGED · artifact fidelity Tier 2 · Direction · **do not claim validation**

---

## What this folder is

The complete pipeline output for **qbr-prep-sim** — a hi-fi simulation of the QBR/EBR Prep-Assemble stage (Package 3, N-able Native branch): the QBR Advisor Coworker executes the 8-pull batch + package-gap diff + industry-trends sweep; the human operator keeps the Judge step. Two builds exist: v1 (lo-fi, Tier 1 record) and **v2 (hi-fi, Tier 2 — the shipping artifact)**.

The sim is an **instrument for the Q2 operator study, not evidence of demand**. Its central premise — operator triggers AI pulls and judges the output — is [A], unsourced, and is the thing being tested. If you find yourself citing this artifact as evidence anyone wants it, stop: that is failure mode F2 (premise laundering), named in the brief.

## Project state (as of 2026-07-31)

- Brief: three-gate, claim-tagged, grep-verified. World-claims [A]+[?] = 7/71 ≈ 9.9%.
- Critic trajectory: 22/30 (pre-build) → 26/30 (v1) → 28/30 (v2). Two copy-level FAILs open on v2 (see HANDOFF.md).
- Council: 44 voices, 20 full, 9 tensions — routed, never resolved. Synthesis slot is [0% Beth] and stays empty until she fills it.
- Three Gate-3 tests due 2026-08-14 (see NEXT-STEPS.md). None has run yet.
- Q2 operator study: not commissioned. It gates everything downstream.

## Governing documents (in the repo, not this folder)

1. `briefs/context/qbr-ebr.ux.md` — the governing offering doc (Beth: "seriously rely on the ux.md file for this"). Where it and the brief conflict on substrate claims, **the brief's grep-resolved claims override** (precedence rule, brief Gate 3).
2. `briefs/context/acp-ux.md` — parent doc. Its **[AGENT GATE]** binds every agent touching this offering. Non-negotiable obligations:
   - Confirm you read the governing file in full before generating.
   - PROCEED-FLAGGED → outputs provisional, [CS:] tags visible; BLOCKED → stop and name the blocker.
   - Flag every [A]/[?] you build on; name conflicts with [CS: VERIFIED]/[CS: HIGH] claims — surface, never resolve.
   - Do not promote PROPOSED sections; do not resolve open decisions — resolution routes **Beth → Meaghan → Nicole** only.
   - Gate on >30% [A]/[?] sections.
   - **47% rule:** grep-verify any ratio or count before quoting it. Fluency does not know its own math.
   - Log spec divergences (DIV-xxx table), don't scatter or settle them. DIV-001 and DIV-004 are open in this packet.
3. `briefs/methods-library-matrix.md` — the 44-method council library backing the testimony.

## Data rules — read before touching anything

- **Everything in both prototypes is fictional and stamped.** SuperN-able Shop, Dibbler & Sons Chartered Accountants, every metric value, every name (J. Garlick, S. Bonk, C. Dibbler — deliberately Pratchett-literary). Seed rule: composite at the category level, fictional at the instance level. Front-page test applies.
- **Anonymize-all-data rule (Beth, 2026-07-31, binding):** any future iteration that touches real data — N-able MCP pulls, Jira/Confluence content, transcripts — replaces real org/person/tenant identifiers with fictional ones BEFORE any artifact write; free-text is paraphrased, never quoted with identifiers; the real→fictional mapping is never persisted. This sits on top of the fictional-seed rule, not instead of it.
- Vanessa Chart / Technica Solutions are real research identities (n=1 operator evidence) — they may appear in internal rail/attribution text, never in client-facing seed data.

## Reading order

See README.md. Verified numbers and the three decision calls are in HANDOFF.md. Do not re-derive stats from memory — grep the source files in this folder; the verified figures and their sources are logged in `bradley-ledger.md`.
