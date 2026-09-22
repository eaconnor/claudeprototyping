# Datadump Refresh — 2026-09-22 (COVERAGE AUDIT, not a sweep)

**Run type:** Ad-hoc corpus-coverage audit — *"is everything in `scout_input` in the datadump?"*
**Target page:** [ACP Research Datadump (living)](https://n-able.atlassian.net/wiki/spaces/AI/pages/62175674556) · AI space · last modified **2026-08-21**
**Sweep window:** none. This run compares the **local corpus against the published index**; it does not gather new sources.
**Pipeline stops here.** Nothing was written to Confluence. Step 5 (Accept / Edit / Reject) is Beth's.

**Tier: FEAST** (187-file mechanical diff + canonical page re-fetch).

---

## Method, and what the numbers do and don't mean

Two diffs were run, because the first one lies.

1. **Filename diff** — every file in `scout_input` (184 `.md`, 3 `.xlsx`/`.docx` = **187**) against the
   combined text of all six `datadump-refresh-*.md` files plus the axial-coding brief.
   **16 referenced · 171 not referenced.**

   **Do not report that 171 as a gap.** The datadump's own rule is *"if it's not linked, it's not a
   source"* — it catalogs **origins**, not my local dossier filenames. A Reddit thread is on the page
   as a `reddit.com` URL, not as `reddit-qbr-thread-01-tracking-scheduling.md`. The filename diff
   measures naming convention, not coverage.

2. **Source-identity diff** — the canonical page was re-fetched (not recalled) and probed for the
   *source* behind each local dossier. That is the diff the findings below rest on.

Result of (2): the QBR/EBR and competitive shelves are **well covered**. Craig Fisher, Stefanie
Hammond, Kaseya 2026, CompTIA, Gradient, Liongard, vCIOToolbox, CloudRadial, Inforcer, usecure,
Intune, NCSC/Cyber Essentials, the `MSP_QBR_EBR` workbook and the abductive analysis all resolve on
the page. The gaps are **not random** — they cluster, and each cluster has a different cause.

---

# 🔴 Finding 1 — the page's own coverage gap line is wrong, and understates the user shelf

**This is the one with consequences.** The published page states, under Content gaps:

> **NEW 2026-08-21: zero new user-shelf sources this sweep.** … **No client voice exists anywhere in
> the corpus**

At the moment that was written, **three files in `scout_input` declared themselves user-shelf
material in their own frontmatter** and are absent from the page. They are not my inference — each
carries a `Datadump shelf:` line written at filing time:

| file | self-declared shelf | filed | on page? |
|---|---|---|---|
| `joe-lewis-julian-interview-2026-07.md` | *Market/world evidence … + **User evidence** (MSP operational pain, service-scope decisions)* | 2026-07-30 | **no** |
| `lewis-persona-library-cast-2026-07.md` | ***User evidence** (personas) — root of the artifact gradient* | 2026-07-30 | **no** |
| `adlumin-proto-personas-pptx-2026-07.md` | ***User evidence** (personas)* | 2026-07-30 | **no** |

All three are **inside** the 2026-08-21 sweep window by three weeks. This is not a throttled search
or an unreachable system — it is a filing step that did not complete, three times, on the shelf the
page then reported as empty.

**What it does and does not overturn.** It does **not** restore "client voice" — none of the three is
a client. Joe/Lewis/Julian is an internal SME call; the persona library is Lewis's own synthesis
(`[CS: MEDIUM]`, and its own file says *"source methodology … is not stated … Ask Lewis before
treating as `[R]`"*); the Adlumin deck is five slides of **images with no extractable text**. So the
*"no client voice"* half stands. The *"zero new user-shelf sources"* half is **false as written** —
there were three, and one of them is a 26-persona library that other documents have been leaning on.

**Severity:** high. A coverage-gap line is the one place a reader trusts to be pessimistic. When it
reports an absence that isn't there, every downstream "we have no evidence for this" inherits it.

**Fix:** add the three as user-shelf rows with their real grades; amend the Content gaps line to
*"no **client** voice"* and drop *"zero new user-shelf sources."*

---

# 🟠 Finding 2 — the file that would resolve open CONFLICT C-13 is not indexed on the page carrying C-13

`scout_input/acp-qbr-analyst/scalepad-deep-dive.md` (scout run **2026-07-06**) is uncataloged.

C-13 on the page reads:

> a killed stat is circulating again … *"one interviewee already paying **$300+/user/mo to
> ScalePad**."* This register **killed that figure on 2026-07-28** … **The finding is the missing
> propagation path from research correction to planning surface, not the number.**

The dossier carries the published pricing that does the killing, with clickable sources:

- Vendor page: Free $0 · **Pro from $250/mo** · **X from $125/mo** add-on · 12-month terms. `[CS: HIGH]`
- Aggregator conflict: Pro from $149/mo, X $15/mo **per client** `[CS: MEDIUM — source conflict]`
- Open: *"$250/$125 vs $149/$15 pricing reconciliation. `[CS: UNKNOWN — needs sales quote]`"*

The model is **per-client, not per-user**, at a quarter of the circulating figure. C-13 names the
missing propagation path as the finding — and the audit shows the mechanism concretely: **the
counter-evidence was gathered three weeks before the correction and was never indexed where the
correction lives.** Anyone re-sourcing C-13 from the page has no pointer to it.

**Severity:** high, low effort. One row.

---

# 🟡 Finding 3 — `acp-qbr-analyst/` is 14 ACP evidence files with zero page presence

Every file in it is ACP QBR/EBR material. Four are substantive and uncataloged:

| file | why it matters |
|---|---|
| `web-qbr-meeting-ethnography.md` | AEIOU + 5Es grounding, claims 1–5. Self-flags `[WOBBLY]` — *"entire pool is MSP trade press + vendor marketing … no peer-reviewed or independent research located"* |
| `web-qbr-human-factors.md` | Claims 6–7, emotional/social stakes. Self-flags that the retention statistics **could not be traced to a primary source** |
| `scalepad-deep-dive.md` | Finding 2 above |
| `vcio-vciso-industry-practice.md` | speaks to the page's own standing content gap *"vCIO job vs vCISO"* |

The two `web-qbr-*` files are the closest thing in the corpus to the *behaviour* of a QBR meeting,
and both arrive pre-flagged as practitioner convention rather than measured behaviour. **That
honesty is the reason to index them, not the reason to withhold them** — an uncataloged `[WOBBLY]`
file is more dangerous than a cataloged one, because its caveat travels only with the file.

`confluence-blind-interviews-study.md` needs no row: its origin (Confluence 62064099623) is already
linked. Correct behaviour under the rule.

---

# 🟢 Finding 4 — out of window, not a gap: the Lewis Pope EBR transcript

`lewis-pope-ebr-details-transcript-2026-08-25.md` — Teams working session, 50m26s, Beth + Lewis Pope
+ Christopher Dunlop, `[CS: VERIFIED — primary]`. Filed **2026-08-25, four days after** the page was
last swept. **Correctly absent.** It is the top row for the next real sweep, and it is
design-direction material by its own header — *"not validated user research."*

---

# ⚪ Finding 5 — 55 files that are correctly absent, and should stay absent

Naming these matters as much as naming the gaps, so a future audit doesn't re-flag them. Counts are
**disjoint** — each file appears in one row only:

| cluster | n | why it is not an ACP source |
|---|---|---|
| `nzo-billing/` | 4 | **INBOX-002** — deliberately parked. Different product surface, GDPR purpose limitation. Recorded as seen, not absorbed. Do not promote. |
| `n-able-homepage/` · `notify-email/` · `proctor-research/` | 18 | Different surfaces — brand/design language, ADLENG notify-service tickets, agent-architecture literature. |
| Adlumin / Huntress / LOTL / usecure / PeerSpot | 15 | **ADL space**, sourced from Confluence 61907271770. A different product's competitive work. |
| alpha-race · channel-gap · apex-bridge · local-* | 16 | Working extracts and prototype-decision notes — derived, not evidence. |
| `00-honor-check.md` · `00-DOSSIER-…machine-readable` | 2 | Process artefacts. |

Separately: `acp-tam-grounding.md` and `acp-tam-control-plane.md` **are** already referenced in the
refresh lineage, and the page handles them correctly under *"Local drafts — NOT shared, so NOT listed
as sources until uploaded."* No action.

---

# 🔵 Finding 6 — a structural gap: the datadump has no shelf for method literature

**26 files** are research-method and design-craft literature, not ACP evidence: arXiv context-engineering
papers, Addy Osmani on specs for agents, NN/g on vague prompts, Microsoft/ThoughtWorks on
spec-driven dev, Google Labs `design.md`, `designtoken.md`, GeneyMap/CHI 2025 journey mapping,
Figma TC/EBC, the MCP-ecosystem scan, *"from UX maker to orchestrator."*

The page has three shelves — synthesis, research sources, specs & definitions — and this fits none.
It is **not an omission**; it is a shelf that does not exist.

Five of the 26 are the sharp end, because they are now load-bearing on code:

`05-question-bias-order-effects` · `06-likert-scale-design` · `07-small-sample-validity` ·
`04-longitudinal-survey-best-practices` · `03-survey-fatigue-monthly-design`

These are the **provenance for the lint rules in `acp-core-testrepo/check-claims.sh`** — rule 4 (no
rates from single-digit n) is `07-small-sample-validity` compiled into bash. A script enforcing a
methodological standard whose source is not indexed anywhere is the same defect this whole apparatus
exists to prevent, one level up: **the rule is now the only surviving statement of its own
justification.**

**Proposed:** a fourth shelf, *Method & craft references (how we work — not ACP evidence)*, and the
five survey-methods files cited from `check-claims.sh`'s header so the rules point back at their
warrant.

---

## What this run does NOT establish

- **No claim that 171 files are missing.** See Method. The honest count of *cataloging defects* is
  **Findings 1–3: eight rows** — three user-shelf, one ScalePad, four `acp-qbr-analyst/`.
- **Nothing was verified about the remaining 72 files** — the numbered QBR/EBR and market dossiers —
  beyond that the *source identities* probed in Method (2) resolve on the page. A per-file
  origin-resolution check was **not** run. That is the honest next pass, and it was not done here.
  (Arithmetic: 171 uncataloged = 3 user-shelf + 14 `acp-qbr-analyst/` + 1 Lewis Pope + 55 correctly
  absent + 26 method literature + **72 unexamined**. Grep-verified disjoint, 2026-09-22.)
- **No Confluence write.** The page is outward-facing and unauthorized for this run.
- **Coverage of the page itself is as of 2026-08-21.** Anything filed after that date is out of
  window by construction, not missed.

---

## Step 5 — Beth's calls

| # | call | cost if skipped |
|---|---|---|
| 1 | Amend the Content gaps line: *"no **client** voice"*; drop *"zero new user-shelf sources."* | A pessimistic line that is wrong keeps licensing false absences downstream |
| 2 | Add the three user-shelf rows — with the persona library's *"ask Lewis before treating as `[R]`"* caveat carried into the row, not left in the file | Three weeks of filed evidence stays unreachable from the index |
| 3 | Add `scalepad-deep-dive.md` to C-13 | C-13's re-sourcing path stays missing, which is the finding C-13 itself names |
| 4 | Add the four `acp-qbr-analyst/` rows, `[WOBBLY]` flags intact | The only behaviour-of-a-QBR material in the corpus travels without its caveats |
| 5 | Decide the fourth shelf — or decide method literature stays out, in writing | It gets re-flagged as a gap at every future audit |
| 6 | Lewis Pope transcript → next sweep's first row | — |

Calls 1–4 are eight rows and one sentence. Call 5 is a judgment about what the page is for.
