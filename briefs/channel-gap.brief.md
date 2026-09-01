---
feature: "Delivery Channel for ACP/Harness QBR-EBR output (Ten Types 'Channel' gap)"
gate: 10
owner: "Beth"
problem_statement: "The ACP/Harness QBR/EBR system has real, code-verified backend infrastructure for connecting to external tool servers (a generic MCP gateway with auth-provider classes, envelope-encrypted credential storage, daily tool-discovery sync) but no delivery channel exists anywhere in the codebase to get output to a client — no frontend app, no client-facing surface, no SMS/portal/PSA-writeback plumbing. Apex Bridge, Beth's own design/demo tool, is explicitly not a candidate real channel. This is a genuinely open infrastructure-level decision, not a designed-but-thin feature. [R]"
okr_objective: "Not sourced in this corpus — [?]. No OKR objective for the Channel decision exists in any of the five scout files or the blueprint excerpt read for this brief."
okr_key_result: "Not sourced in this corpus — [?]. No measurable key result has been named for 'pick and build a delivery channel.'"
counter_metric: "Not sourced in this corpus — [?]. No counter-metric named."
idea_score: 11
evidence_sources:
  - "scout_input/channel-gap-01-blueprint-ten-types-and-infra.md"
  - "scout_input/channel-gap-02-chores-open-item.md"
  - "scout_input/channel-gap-03-gateway-code-and-repo-structure.md"
  - "scout_input/channel-gap-04-qbr-ebr-ux-footnotes-psa-writeback.md"
  - "scout_input/channel-gap-05-competitor-delivery-patterns.md"
  - "briefs/qbr-system-blueprint-2026-08-04.md §15 (lines 381-406)"
  - "CHORES.md (open item, unchecked as of 2026-09-01)"
status: "draft"
confidence_regime: PROCEED-FLAGGED
proceed_because: "The evidence for what currently exists (gateway, encryption, sync, absence of any frontend) is solid and code-verified twice independently. The evidence for what SHOULD be built does not exist and should not be manufactured — a decision-space visualization has standalone value at Tier 1 without pretending to resolve the decision. Beth holds that call."
machine_behavior: "build a decision-space visualization, not a recommendation · surface [R]/[D]/[A]/[?] tags visibly in the artifact · do not claim validation on any candidate channel · carry both unresolved competitor divergences forward without picking a side · keep Channel and Customer Engagement structurally separate · fidelity = Tier 1 Concept"
---

## Note on evidence ratio

World-claims ratio (claims about the actual state of the system/market, [A]+[?] as a share of total, meta-TODOs about the brief's own status excluded): **5/19 = 26.3%**. Under the 30% threshold. See `channel-gap-math-recount.md` for the full bucket and for what the ratio looks like if meta items get folded in carelessly (it climbs to 39.1% — a live example of why the dedup/separation rule exists).

---

## Domain model

- **Channel** — the thing this brief is about. Undecided by definition: `[?]`. Named candidates in the corpus: SMS, email, portal, PSA-writeback, none-yet-decided.
- **MCP Gateway** — `[R]`, exists. Generic, `auth_type`-driven, no vendor hardcoded.
- **Credential / auth layer** — `[R]`, exists. Envelope-encrypted (AES-256-GCM, KMS in prod / local fallback in dev), four provider classes (None/ApiKey/Basic/Header/OAuth).
- **Tool-discovery sync** — `[R]`, exists. Daily background pass, per-server failure isolation.
- **The unimplemented "deliver EBR/QBR output to a client" service** — `[R]` that the gap exists (no code anywhere implements it); `[?]` what it should be.
- **`notification_recipients` schema** — `[R]`, exists, two types (`email`, `actor`), no `sms`.
- **Apex Bridge** — `[R]`, exists as Beth's design/demo tool; explicitly excluded as a candidate real channel by Beth's own direct statement.
- **Customer Engagement** — adjacent, structurally separate decision. `[R]`-sourced (blueprint §15, direct). Four options named: bespoke, templated (current state), client-facing-between-EBRs, scored/gamified. Do not conflate with Channel — Channel is "how does anything reach a client at all," Customer Engagement is "what relationship does the client have with the content once a channel exists." A portal answers both at once, which is exactly why they get collapsed in casual conversation; keep them apart in this brief.

---

## Gate 1 — Problem: is it real and sourced?

Real and sourced. This is the strongest gate in this brief.

- The gateway is generic infrastructure: `auth_type`-driven provider classes, envelope-encrypted credential storage (`app/mcp/encryption.py`), a daily background tool-discovery sync (`gateway/sync.py`). `[R]` — direct full-file code read, 2026-09-01 (file 03), corroborating a prior direct read 2026-08-12 (file 01 §15, `[CS: VERIFIED]`).
- No vendor adapter is hardcoded anywhere in that directory — Inforcer/HaloPSA/N-central appear only in `specs/_ux/*.ux.md` prose, not in code. `[R]` (file 01 §15).
- The gateway code is entirely inbound-direction plumbing: external tool servers → agents. No outbound delivery mechanism (email send, portal render, SMS send, PSA-ticket-write) exists in `sync.py`, `encryption.py`, or `providers.py`, or the directory they live in. `[R]` — confirmed by direct read of all three files' full contents, not inference (file 03).
- No frontend exists anywhere in the codebase. `acp-core-main-3/apps/` contains exactly one on-disk directory, `backend`. Confirmed independently twice: 2026-08-12 (file 01 §15) and re-verified directly again 2026-09-01 via a fresh directory-check pass (file 03). `[R]`
- Apex Bridge is Beth's design tool and demo vehicle, confirmed by her directly — not a candidate real channel. `[R]` (file 01 §15).
- `notification_recipients` (`data-model.md:129-132`) has exactly two types today, `email` and `actor` — no `sms`. This is new schema surface if SMS is ever chosen, with zero existing plumbing toward it. `[R]` (file 01 §13).
- The Channel decision is one of four open, unchecked items named in the 2026-08-12 Ten Types gap-pass, still open and unchecked in CHORES.md as of this scout pass (2026-09-01). `[R]` — directly quoted (file 02).

**One live discrepancy worth naming rather than resolving:** `acp-core-main-3/CLAUDE.md` states in prose that `apps/fake-mcps` is "planned but empty." An empty-but-committed directory would still return EISDIR on a Read attempt, same as `apps/backend` did. Instead, Read returned "File does not exist" for `apps/fake-mcps` — which normally means no directory node exists at all in this snapshot. Two readings, neither resolvable from this local copy: (a) this static download never materialized an empty placeholder that exists in the live repo, or (b) "planned but empty" is aspirational documentation not yet committed anywhere. `[?]` (file 03). This bears directly on how much weight to put on "no frontend exists" — the finding is solid against the static snapshot read; it is not independently checked against the live repo in this pass.

---

## Gate 2 — Right thing: does this advance the mission? What outcome moves?

Cannot be answered from this corpus, and the brief should say so rather than manufacture an answer.

- No OKR objective, key result, or counter-metric for "resolve the Channel decision" exists anywhere in the five scout files or the blueprint excerpt. `[?]` — see frontmatter.
- A prior workshop (blueprint §13, 2026-08-06) already reached a directional call: "SMS out, reply becomes a PSA ticket." `[R]` for the workshop having made that call, and for the fact that a real MSP-specific precedent exists for the *inbound* direction (client-initiated text → ticket, cited to Syncro/mspprocess.com). But this design needs the *bidirectional* case — system texts out, client reply becomes a ticket — and that extension beyond the cited inbound-only precedent is `[A]`, not `[R]`. Name this distinction explicitly: it is a real failure-mode risk. The workshop's confirmed inbound precedent can make the whole SMS choice read as more validated than it is.
- The precedent citation itself has a verification problem. Blueprint §13 cites "98% open rate, ~3min avg response vs ~3-day email" for mspprocess.com. A direct fetch of mspprocess.com (2026-09-01) could not find those figures anywhere on the page. `[?]` — not `[D]` as the blueprint originally implied. Either the figures live on a page not fetched in this pass, or the citation needs re-checking against its original source before it gets quoted again in any future artifact. (file 05)
- Customer Engagement is a different, adjacent open decision — four options (bespoke / templated / client-facing-between-EBRs / scored-gamified), current design occupies only option 2. `[R]` (blueprint §15, direct). Do not resolve Channel by accidentally resolving Customer Engagement (e.g., building a portal answers both at once without either being decided on its own terms).
- Competitor delivery-channel patterns exist as domain grounding, not as an argument for any candidate: ScalePad (live-present + password-link + PDF), myITprocess (PDF + always-on portal), CloudRadial (always-on portal only), vCIOToolbox (PSA-ticket writeback only, no client-facing surface), mspprocess.com (multi-channel → PSA ticket, general MSP-communication category, not QBR-specific). `[D]` at most — vendor self-report, zero independent confirmation. The whole set is `[WOBBLY]` per the source scout's own framing (file 05). No tool in this pool combines client-facing delivery with PSA-ticket writeback in one product — `[D]`, `[WOBBLY]` (cross-source read, file 05).

**Two unresolved competitor divergences, carried forward without picking a side:**
1. CloudRadial's current marketing (checked live, 2026-09-01) claims an always-on client-facing portal — "on-demand QBRs... available 24/7." This appears to contradict the July 2026 `qbr-ebr.ux.md` finding (footnote 50, file 04) that CloudRadial has no between-EBR client-facing view. Could be a marketing-vs-shipped gap, a change since July, or a definitional mismatch on what "client-facing between EBRs" means. Not resolved here. `[D]`/`[?]`
2. vCIOToolbox's current docs describe a shipped 2-way ticket + opportunity sync to Autotask. Footnote 43 (July, file 04) called vCIOToolbox's AI features "future tense... not shipping." These may not actually conflict — the July footnote may have been scoped to AI features specifically, not the sync mechanism — but they're close enough to the same claim territory to flag, not silently harmonize. Not resolved here. `[D]`/`[?]`

**Footnote provenance flag:** Footnotes 42/43/50 — the basis for "no PSA writeback exists in this market except vCIOToolbox," which blueprint §15's Network section treats as a settled competitive-position fact — all trace to one underlying file, `qbr-competitor-products-2026-07-28.md`. The footnote text itself is `[R]`, directly quoted (file 04). The underlying synthesis is `[WOBBLY]`: single-source sweep, not independently triangulated, dressed as settled fact in the blueprint. Carry the flag, don't strengthen it.

---

## Gate 3 — Built right: tested how, by whom, what counts as done?

Not applicable yet, deliberately. This brief authorizes a Tier 1 Concept artifact — a decision-space visualization — not a build of any candidate channel. `[A]` — Tier 1 fidelity is Beth's explicit judgment call about what this artifact should be, not a finding from evidence.

- Zero of the four named candidate channel types (SMS, email, portal, PSA-writeback) has any test plan, pilot, or validation criteria named anywhere in this corpus. `[?]`
- "Tested how, by whom" cannot be answered until Beth makes the Channel call named in Gate 2. The `machine_behavior` regime for this brief is explicit that no candidate should be built or recommended — the artifact's job is to show the decision space, not to shortcut past Beth's judgment.
- "What counts as done" for the Tier 1 artifact itself: a decision-space visualization that (a) shows the four Channel candidates and their evidence status honestly, (b) keeps Channel and Customer Engagement visually and structurally separate, (c) carries both unresolved competitor divergences forward without resolving them, and (d) does not present the SMS workshop call as more validated than the bidirectional-extension `[A]` tag warrants.

---

## Failure modes

1. **Silent bias toward SMS looking "decided."** The workshop's confirmed inbound MSP precedent (Syncro/mspprocess.com) can read as validating a bidirectional design nobody has tested. The `[A]` tag on the bidirectional extension exists specifically to block this. If a build downstream drops that tag, SMS will look chosen when it is actually one candidate with a partial, non-matching precedent behind it — worsened by the fact that the precedent's own cited stat (98%/3min/3-day) failed re-verification against its source.
2. **Conflating Channel with Customer Engagement.** Both look like "build a portal" from a distance. They are different Ten Types categories with different open options. A build that picks a portal without naming which decision it's actually resolving will quietly foreclose Customer Engagement option 3 (client-facing between EBRs) while claiming only to have picked a Channel.
3. **Trusting a stale or partial repo snapshot.** The `apps/fake-mcps` discrepancy (file 03) means "no frontend exists" is solid against this static download but not independently checked against the live repo. If the live repo has since changed, the core Gate 1 finding needs re-verification, not re-assertion.
4. **Treating single-source competitive synthesis as settled fact.** Footnotes 42/43/50 all come from one file. Blueprint §15's Network section already treats their conclusion as a positioning fact. Repeating that without the `[WOBBLY]` flag turns one sweep into false consensus.

---

## What's missing

- No OKR objective, key result, or counter-metric for the Channel decision anywhere in this corpus — not filled in, named as absent.
- Live-repo confirmation of "no frontend exists" — only a static snapshot was checked (twice, but the same snapshot lineage).
- Resolution of either competitor divergence (CloudRadial portal claim, vCIOToolbox sync-vs-AI-features scope).
- Re-sourcing of the mspprocess.com 98%/3min/3-day stat, or a decision to stop citing it until found.
- Structure — per CHORES.md and blueprint §15, nobody at N-able is named as owning delivery of whichever Channel gets chosen. This is a fifth open Ten Types item, adjacent to but not solved by this brief.
- Any test plan, pilot design, or acceptance criteria for any candidate channel — intentionally absent at this fidelity tier, per `machine_behavior`.
