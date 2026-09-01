# critic-delta2 — qbr-prep-sim v2.1 (second delta check)

**Date:** 2026-07-31 · **Scope:** delta check on the v2.1 patch only — NOT a full pass 4.
**Reviewed:** `prototypes/qbr-prep-sim/v2/index.html` (full read this pass) against the orchestrator's three-item change list, `scout_input/nable-source-map-qbr-2026-07-31.md` (the dossier every label must trace to), `scout_input/intake-constraints-qbr-prep-sim-2026-07-31.md` (naming rules), `critic-pass-3-qbr-prep-sim-v2.md`, and `critic-delta-qbr-prep-sim-2026-07-31.md`.
**Verification basis:** every quoted string read directly from the current file [CS: VERIFIED]. The §05/§06 headless render capture is cited as given [D — orchestrator, 2026-07-31].

---

## (a) Label trace — 8 spot-checks against the dossier (task asked for ≥6)

| Pull | Label in build | Dossier says | Verdict |
|---|---|---|---|
| 1 | "N-central Warranty Expiry report (Reports › Status) [CS: VERIFIED — docs] · 5 OEMs · ScalePad practice [CS: MEDIUM]" | Same, same tags (map §Track 1 + row 1) | **TRACES** — constraint and practice-path tags both carried |
| 2 | "M365 admin center 'Active users' usage report + Billing › Licenses **[CS: VERIFIED]**" | Active users VERIFIED; **Billing › Licenses only [CS: HIGH]** (map line 46: "not re-verified this session") | **TRACES with one tag inflation** — see RISK 1 |
| 3 | "Entra Sign-in logs / Graph signInActivity vs. HR roster (manual) [CS: VERIFIED/HIGH]" | Same, same split tag (row 3) | **TRACES** — §08 chips also correct incl. "no bound source" honesty |
| 4 | "HaloPSA Reports module — scheduled SLA report (module real; stock report names unconfirmed [WOBBLY])" | Exactly the recommended label; "do not invent a report title" (row 4) | **TRACES** — no title invented, WOBBLY carried |
| 5 | "N-central Patch Status (Detailed) + Cove Backup Dashboard · Recovery Testing boot-verification [CS: VERIFIED]" | All three VERIFIED (row 5) | **TRACES** — but see FAIL 1 on the feed line's compound tag |
| 6 | "fictional vendor — metric pattern borrowed: **phish-prone rate**; no vendor trade name" | Map's own recommendation verbatim: borrow the metric pattern, not the vendor's; PPP is KnowBe4 trade language | **TRACES** — no "Phish-prone Percentage," no KnowBe4 on the pull, anywhere |
| 7 | "Adlumin health report vs. MSP-authored baseline · no native baseline-drift report found [WOBBLY]" | "Not found — keep generic label" for the drift report ✓; but "health report" is itself a name the map could not find ([CS: LOW], map line 36) | **HONESTLY GENERIC on drift; residue on "health report"** — see RISK 2 |
| 9 | "no vendor ships this — the MSP's own cross-sell analysis" | "no vendor ships it as a named report — that's honest, keep it as the MSP's own artifact" (row 9) | **TRACES** — verbatim-faithful |

- **"Backup Fund": zero occurrences file-wide** [CS: VERIFIED — full read]. The dossier's refuted name never entered the build.
- **KnowBe4: one occurrence** — §06's "fed by (real candidate feeds)" footnote lists "KnowBe4 industry benchmark" among NCSC/ICO/DBIR/Cyber Essentials, tagged "[CS: HIGH — these exist as publications]". This is map-sanctioned (rows 10 + concept note list exactly these feeds; the KnowBe4 benchmark is [CS: VERIFIED] there, so the build's blanket HIGH *understates* — allowed). It is not the phish-sim vendor context the naming rule targeted. Noted at RISK 3 for the annotation-layer question only.
- Pull 8: "Adlumin One-Touch Compliance Reporting — executive report [CS: HIGH — vendor; exact portal titles unverified, THIN]" — traces exactly, including the THIN DOMAIN carry. §05 chip "Adlumin · One-Touch Compliance" ✓.
- §05/§07/§08 srcChips extended as claimed; §02 and §04 keep plain chips — §04's plain "Cove" is the declared scope choice, consistent, not charged.

## (b) Re-brand vs. U6 — PASS

Title (line 6) and topbar product read "N-able Harness"; the coworker crumb "QBR Advisor (Coworker)" stays beside it; the divergence chip now reads: *product name "Harness" — Beth 2026-07-31 [D] · coworker: "QBR Advisor" (FSN-83143) vs "QBR Analyst" (onboarding spec) — divergence carried, unresolved [D]* [CS: VERIFIED — lines 820–821]. Inner surfaces (register header, quarantine card, rail blurb) keep "QBR Advisor" as the coworker's spec name. This is exactly the intake constraint: product chrome re-branded, U6 visible, nothing resolved. The re-brand does not launder the naming question.

## (c) Trend Report — PASS, stays [A] everywhere

- "[A — proposed product surface, Beth 2026-07-31]" renders on **all three surfaces**: run row V15, board trends-card header, report §06 heading line [CS: VERIFIED — lines 1308/1529, 1761, 2156].
- Estimated/Unverified chips intact ×6 (3 board trend blocks + 3 report trend blocks) plus the run-row chip — "renders ALWAYS" holds.
- Cohort subtitle ("businesses like yours — UK accountancy · ~50 staff · North of England") on board and report; the V15 SCRIPT feed line carries the [A] too.
- Feed-candidates note claims the *publications* exist, not the product; k-anonymity note correctly points at Value Ledger spec T039–041 [D — in spec] and routes cross-tenant privacy to its own GDPR review [?]. No surface anywhere states the Trend Report exists as a product.

## (d) Doctrine — no regressions

- Copy bans: zero time-saved framing in the report; 0.4× chip still quarantined on the Working Document; no "under 20 minutes"; no percentages in report prose [CS: VERIFIED — full read].
- SEED coverage: new labels introduce no unstamped numbers; trend content SEED-stamped in all three locations; cover, register, feed stamps intact.
- Dual-surface: two artifact objects, no toggle — untouched.
- Council: 9 tension cards intact, synthesis slot still "[0% Beth — fill this in]", Hard Mode stub attributed — untouched.
- Fidelity banner: "~ apx-* components (3 of 5 in use)" still accurate — `apx-badge`/`apx-table` remain defined-never-instantiated [CS: VERIFIED].
- Footer-vs-V15 residue (line 2343 "…tiers… never render here") unchanged — carried open item, Beth's call (tensions #6/#8). The v2.1 patch adds no new tier vocabulary to the report; the new source labels are names, not tiers.

## Punch list (new items only)

**FAIL (copy, minor) — one compound claim mis-carries a tag.** run_audit feed, V5 done line (~1403): "Cove Recovery Testing boot-verification screenshot = **the client-legible restore evidence [CS: VERIFIED — docs]**." The screenshot-as-proof-of-recoverability is docs-VERIFIED (map line 28); "client-legible" — the claim that this is the artifact clients actually respond to — is the map's **[CS: LOW — community recollection]** (row 5 friction column, Track 2 item 4). The VERIFIED tag covers both halves. Same phrase sits untagged in the V5 row note (line 1299). One-word fix; does not gate; named for the next touch.

**RISK 1 — pull 2's single [CS: VERIFIED] covers two surfaces with different tags.** "Active users" is VERIFIED; "Billing › Licenses" is only [CS: HIGH — standard admin surface, not re-verified] per the map. Mild inflation on the second surface.

**RISK 2 — "Adlumin health report" survives as a name the dossier could not find.** Map: no public surface by that name [CS: LOW]; recommended generic or "executive report" (which pull 8 correctly adopted). Pull 7's honesty note covers the baseline-drift absence, not the "health report" name. Deliberate retention per the change list, and lowercase reads semi-generic — but it is the one label left standing that the dossier flagged. Beth's internal ADL Confluence is the named resolution path.

**RISK 3 — a real trade name (KnowBe4) now sits in the client-facing artifact's annotation layer** (§06 feed footnote). Map-sanctioned and honestly tagged; but it belongs to the same "what does the annotation layer show a client" question as the footer-vs-V15 wording — batch them (tensions #6/#8, Beth).

## Carried unchanged (from pass 3 / delta 1)

1. Footer absolutism vs. V15 chips — Beth's wording call.
2. Report visual pass: §05/§06 now render-verified via headless capture [D — orchestrator]; **§07–§13 remain [CS: UNKNOWN — DOM-verified only]**; print preview still unexecuted.
3. Apex Figma pull behind radius 2/4/16 + Manrope — [CS: UNKNOWN], carried since pass 2.
4. v1 nits (held-note undercount, modal "22/30") — untouched by this patch, still batched for the next v1 touch.

## Score ruling

**28/30 stands for the 2,432-line file.** The v2.1 patch is a net source-fidelity gain — six pulls now carry named, dossier-traced surfaces with their tags, and the two not-found pulls stayed honestly generic exactly as the dossier instructed. The one new FAIL is a single-word tag mis-carry in a feed line, same class as the copy nits already living in the docked dimensions; it does not move a 5 to a 4 or reopen a closed FAIL. No doctrine regression found.

## Line count for the ledger

`prototypes/qbr-prep-sim/v2/index.html` — **`</html>` at line 2,431; Read reports 2,432 with a trailing blank** [CS: VERIFIED — read to EOF this pass]. Consistent with the orchestrator's 2,432. +5 content lines over the 2,426 of delta 1.

---

## Honor check

- **Judgment held by:** Beth. The "health report" label, the KnowBe4-in-annotation-layer call, the footer wording, and whether the tag mis-carry gates anything are hers. This document names and stops — critic cannot and did not write or modify any file; this report was written to disk by the orchestrator.
- **Mechanics performed:** full read of the current file; 8 label traces line-by-line against the scout dossier; naming rules checked against the intake constraints; both priors consulted for carried items.
- **[CS: VERIFIED]** — every quoted string, chip, and line number above, read this pass. **[D — orchestrator]** — the §05/§06 headless capture, cited as given. **[CS: UNKNOWN]** — visual quality §07–§13, print output, the Apex Figma pull. FSN-83143/FSN-82692 issue identities accepted from the intake doc and priors, not independently traced this pass [CS: HIGH — sourced, not verified].
- **No validation claimed.** PROCEED-FLAGGED carried unchanged; Tier 2 · Direction. 28/30 is a build-compliance score — the Q2 study remains the only thing that moves the evidence, and a proposed Trend Report with honest chips is still a proposal, not a product.
