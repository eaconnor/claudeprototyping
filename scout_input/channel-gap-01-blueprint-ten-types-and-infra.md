# Channel gap — QBR System Blueprint excerpts (source: briefs/qbr-system-blueprint-2026-08-04.md)

All content below is verbatim or near-verbatim from the source file, read in full 2026-09-01. Line numbers refer to the source file at time of read. [CS: VERIFIED — direct Read, this pass]

---

## §0-1 — What exists in the ACP repo (lines 13-41)

**Real, built substrate (per the 2026-07-20 Idea Chess pass, `briefs/concept-sketches-qbr-2026-07-20.md`, cited in qbr-ebr.ux.md §4):**
- **Runbook Engine — 49/49 tasks built.** [CS: VERIFIED] A QBR runbook is a wiring job onto this, not a build from zero.
- **Value Ledger producer — 55/55 tasks built** (corrected 2026-07-31 from an earlier "52/52" by direct grep of `specs/003-value-ledger/tasks.md`). **Renders $0 today** — no QBR-specific producer is wired in yet. [CS: VERIFIED]
- **The Coworker registry itself (`specs/004-ai-coworker-registry/spec.md`) is built-to-spec, Draft status.**

What's missing — the journey/orienting map (qbr-ebr.ux.md §2), 26 service moments across 7 stages (Entice · Enter · Schedule · Prep-Assemble ×8 pulls · Prep-Judge · Live Meeting ×12 moments · Follow-up · Extend):

| Status | Count |
|---|---|
| Built | **0** |
| Specced | **1** (QBR Advisor is *named* in FR-019 as one of five v1 platform defaults) |
| Adjacent (substrate exists, not wired) | **8** |
| Absent | **17** |

**Reads as:** the plumbing (execution, versioning, audit, value-tracking) is real and done. The QBR-specific content — the actual runbook steps, the risk-register/roadmap data model, the confirm-gate UX, the defensibility tiers — is almost entirely undesigned. "Map a good system" is genuinely greenfield at the content layer, not the infrastructure layer.

---

## §7b — Plausible MSP tech stack (lines 193-208)

Six categories, from the deck's own normalization diagram (p6) plus the competitive-scan sourcing already in qbr-ebr.ux.md (HaloPSA named must-integrate per the n=119 survey).

| Category | N-able native | Plausible alternatives MSPs actually run | Source |
|---|---|---|---|
| **PSA** (tickets, SLAs) | MSP Manager [R — corrected 2026-08-04; confirmed in datadump, N-UEM-Coworker-Use-Cases.txt, listed alongside ConnectWise as a PSA ticket source] | ConnectWise, Autotask, HaloPSA, Kaseya BMS, Syncro | HaloPSA named must-integrate [D — n=119 survey, cited in qbr-ebr.ux.md]; rest [CS: MEDIUM — general market knowledge, not sourced in this corpus] |
| **RMM** (patch, device health) | N-central | Kaseya VSA, NinjaOne, Atera, Datto RMM, ConnectWise Automate | N-central [R — Stefanie/Vanessa first-person]; alternatives [CS: MEDIUM — not sourced in this corpus] |
| **MDR / Security** | Adlumin | Huntress, SentinelOne, CrowdStrike, Sophos MDR | Adlumin [R — deck p6/p8]; alternatives [CS: MEDIUM] |
| **Backup / DR** | Cove | Datto BCDR, Veeam, Acronis | Cove [R — deck p6/p8]; alternatives [CS: MEDIUM] |
| **Identity / MFA** | *(no N-able-native identity product)* | Microsoft Entra ID, Duo, Okta | Deck p6 names Entra explicitly [D]; Duo/Okta [CS: MEDIUM] |
| **Security awareness / phish-sim** | *(no N-able-native product)* | KnowBe4, uSecure | Both named explicitly in the deck's own diagram [D — deck p6] |

**The finding this surfaces:** identity and awareness training have no N-able-native option at all; PSA does (MSP Manager) — so Package 3 (N-able Native) covers four of six categories, not three. Every MSP is still cross-vendor in at least two of six categories (identity, awareness) regardless of Package.

---

## §13 — Live workshop 2026-08-06, the C/D-tier delivery model (Channel decision, lines 311-333)

**Channel — confirmed, "the way to go": SMS out, reply becomes a PSA ticket.** [CS: HIGH] Real, MSP-specific precedent (Syncro, mspprocess.com — 98% open rate, ~3min avg response vs ~3-day email) runs the *inbound* direction (client-initiated text → ticket); this design needs it running both ways — system texts the sachet out, and a client reply is captured as a ticket rather than dying in a phone, closing RESEARCH_HANDOFF finding #7's follow-through gap.

**Not yet built:** `notification_recipients` (data-model.md:129-132) has exactly two types today, `email` and `actor` — no `sms`. This is new schema surface, confirmed direction, zero existing plumbing.

**Explicitly not resolved, carried forward, not lost (end of §13):**
- Slack/Teams as a client-facing channel (vs. SMS, which won) — never definitively ruled out, just superseded by the SMS decision.
- The storyboard Beth asked for (client-side year-of-sachets, Priya's production/review side, or both) — scoping question asked, not answered.

---

## §15 — Ten Types of Innovation (Doblin/Keeley) gap pass, 2026-08-12 (lines 381-406, FULL SECTION)

Beth's council references the Ten Types framework as a default voice; she asked directly what this system design is missing against all ten categories. Configuration (Process, Structure, Profit Model, Network) and Experience (Service) got checked against the corpus; Offering (Product Performance, Product System) checked against `acp-core-main-3` code, not spec prose.

**Strong — already designed:** Process (the 7-stage spine, §8/§11), Service (the blueprint itself), Product Performance (the draft-EBR capability).

**Product System — real, checked against code not spec.** `apps/backend/app/mcp/gateway/` is already generic: `auth_type`-driven provider classes, envelope-encrypted credential storage (`app/mcp/encryption.py`), a daily background tool-discovery sync (`gateway/sync.py`). [CS: VERIFIED — read 2026-08-12] No vendor adapter is hardcoded anywhere in that directory — Inforcer/HaloPSA/N-central appear only in `specs/_ux/*.ux.md` prose, not in code. First build step is auth (does the gateway hold a live credential and a discovered tool list for a given server), not normalization — normalization is the step after ≥2 sources are live and their shapes need reconciling into one register. Easy/hard is inverted from the obvious read: HaloPSA (external, documented REST API) is the easy connect; N-central/Cove/Adlumin (N-able's own products) are the hard case, and the blocker there is internal alignment, not integration difficulty.

**Channel — corrected, not abandoned.** Apex Bridge is Beth's design tool and demo vehicle, confirmed by her directly — not a candidate real channel. Checked the repo for what the real channel actually is: `acp-core-main-3/apps/` contains exactly one app, `backend`. No frontend exists anywhere in the codebase. [CS: VERIFIED — read 2026-08-12] So Channel isn't thin, it's genuinely undecided at the infrastructure level — that absence is the finding, confirmed by the code, not an assumption to walk back.

**Customer Engagement — options, per Beth's ask to think through rather than pick:**
1. Bespoke per client (status quo — Vanessa's own labor, no product underneath it)
2. Templated-with-variables — what's currently designed (draft auto-fills a fixed structure, Vanessa edits it)
3. Client-facing view between EBRs (risk register visible/trackable outside the meeting) — the competitive scan (qbr-ebr.ux.md footnote 50) found none of ScalePad/Cognition360, myITprocess, Datto Strategy Overview, or CloudRadial do this
4. Scored/gamified — the Inforcer golden-tenant 1–9 baseline already exists; could be something a client watches move between meetings instead of hearing about quarterly

Current design occupies only option 2. Options 3/4 are undesigned white space, not rejected.

**Profit Model — assumed present per Beth's direct instruction; not re-opened.**

**Network — both partnerships and normalization, but they're different levers, not the same one.** Partnerships = who connects. Normalization = what happens once more than one source is live. Craig Fisher's own line (SRC-U-009) — "tighten your relationship with Inforcer, without a shadow of a doubt" — reads as a positioning claim (N-able as the aggregation layer other MSP tools plug into) rather than a connector-build task. The gateway's generic discovery layer (Product System, above) is the technical precondition for that claim to be credible. Corroborating signal already in the corpus: `qbr-ebr.ux.md:790` (footnote area) — of the tools scanned, only vCIOToolbox writes actions back into a PSA as tickets; everyone else stops at report generation. Read/write across PSA+RMM+MDR would be a Network position nothing in the scan currently holds.

**Brand — named, not written down.** Craig's line that a client's cyber attack "has to be on them, not on us" is a real brand-positioning signal from the primary source, but Beth's own read is that stating it plainly is reputationally ugly. Logged here as a known input to Brand, deliberately left out of any customer-facing artifact.

**Structure — still absent.** Nobody has named who at N-able organizes to build or own this across the ten categories above; §14's decision-owners (Beth, Meaghan, Nicole) are decision-makers, not an org structure for delivery. Not solved in this pass — naming the gap, not filling it.
