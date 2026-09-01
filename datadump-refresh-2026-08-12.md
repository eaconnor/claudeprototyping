# Datadump Refresh — 2026-08-12

**Sweep window:** ad-hoc (single source, dated 2026-08-07)
**Run type:** Ad-hoc manual promotion — Steps 1–4 only
**Last scheduled run:** 2026-08-10 (swept 2026-08-04 → 2026-08-10)
**Pipeline stops here.** Step 5 (Accept/Edit/Reject) is Beth's. Step 6 does not run without approval.
**Trigger:** Beth — "and should be in data dump," on the Craig Fisher / Technica Solutions EBR interview.

---

## ⚠️ COVERAGE GAP — READ FIRST

**The scheduled Aug-10 run should have caught this and didn't.** The interview is dated
**2026-08-07**, squarely inside that run's Aug 04 → Aug 10 sweep window.

| What | Detail |
|---|---|
| Source location | `scout_input/craig-fisher-technica-ebr-transcript-2026-08-07.md` (local repo) |
| Why it was missed | `scout_input/` is **not a swept source.** The refresh sweeps Confluence, Teams Brain Dump, Outlook, SharePoint, Condens and Claude Code sessions. Nothing sweeps the local repo. `[CS: VERIFIED — grepped `.claude/skills/refresh-datadump/`, no reference to `scout_input`]` |
| Blast radius | Any transcript, scout dossier or brief that lands in the repo rather than in Confluence or Teams is invisible to the weekly pipeline, indefinitely. This is the highest-value user-shelf source of the last fortnight and it sat unregistered for 5 days. |
| Recommended fix | Add `scout_input/` and `briefs/` to the Step 1b sweep. Cheap — it is a local glob, not an API call, and it is the one intake path with no rate limit or indexing failure mode. |

Also unresolved from Aug-10 and still true: **Teams Brain Dump remains dark** on both search
paths (third consecutive run). Silence is still not coverage.

---

## Infrastructure note — `library/` does not exist

`datadump-update-process.md` Part 2 specifies INGEST → `library/_raw/`, EXTRACT to
`library/user/…`, REGISTER in `library/manifest.yml`. **None of these paths exist in the repo.**
`[CS: VERIFIED — `find library` returns nothing; no `manifest.yml`]`

So Step 2 below registers against the *convention* rather than the artifact. The `feeds_specs[]`
link the process calls "the memory between runs" has nowhere to live, which means STALE flags
below are asserted in this document rather than mechanically derivable next run. Named, not
worked around.

---

## STEP 1 — GATHER

**Source:** Craig Fisher (Technica Solutions) — EBR interview
**Date:** 2026-08-07 · **Duration:** 51m 55s · **Method:** Teams call, transcribed
**Participants:** Craig Fisher (owner/partner, Technica Solutions) · David "Big D" (technical) ·
William Mincher (N-able) · Elizabeth Connor (N-able) · Jude Scally (N-able)
**Shelf:** `user` — primary user research, first-party, decision-maker + practitioner in the same room

Transcription quality caveat: product names are consistently garbled. My readings, flagged:
"enforcer" → **Inforcer** `[CS: HIGH]` · "in Central"/"N Central" → **N-central** `[CS: VERIFIED]` ·
"you secure"/"Usecure" → **uSecure** `[CS: HIGH]` · "Halo" → **HaloPSA** `[CS: HIGH]` ·
"Roost" → **Rewst** `[CS: MEDIUM — least certain of the set]` · "at Lumen" → **Adlumin** `[CS: HIGH]` ·
"Able"/"Enable" → **N-able** `[CS: VERIFIED]`.

---

## STEP 2 — CATALOG

### New source registered this run

```yaml
- id: SRC-U-009
  shelf: user
  library_ref: scout_input/craig-fisher-technica-ebr-transcript-2026-08-07.md
  type: "Customer interview — transcript"
  title: "Craig Fisher (Technica Solutions) — EBR interview"
  participants: [Craig Fisher (owner/partner), David (technical)]
  captured_at: 2026-08-07
  registered_at: 2026-08-12
  maturity: Direction
  drift: FRESH
  feeds_specs: [Offering A brief (QBR/EBR prep), qbr-system-blueprint, qbr-draft-flow proto, ebr-service-blueprint]
```

Next free id confirmed: SRC-U-001 … SRC-U-008 in use, so **SRC-U-009**.
`[CS: VERIFIED — grepped all SRC ids in repo]`

### What this source supplies that nothing else does

The **complete data-acquisition chain for an EBR, named by the person who performs it**, plus
the transport mechanism. Prior sources (SRC-U-007 Stefanie Hammond) give the *template*; this
gives the *labour*.

| Tool | Supplies | Verbatim / timestamp |
|---|---|---|
| **N-central** | Device & hardware inventory, licensing | "just grab a device hardware list from in Central… it can take 5 minutes to pull that report off" (1:51) |
| **Inforcer** | M365 tenant alignment vs. golden-tenant baseline; deviation alerts; policy rollout | "a pretty good hour of that time would be aligning some of the clients in enforcer" (3:18) |
| **uSecure** | Awareness training: gap-analysis completion, course progress, phishing credential-give | "10, 15 minutes of my life I'll never get back every time" (43:25) |
| **HaloPSA** | Ticket stats, new tickets, SLA % from client dashboard | "Halo stats… we've got that in the client dashboard and Halo" (36:04) |
| **Rewst** | Exporting licence data out of 365 tenants | "We use Roost to export that from 365 tenants" (35:02) `[CS: MEDIUM]` |
| **Cloud Capsule** | Fast tenant security export — guest users, last login | "about 18 pence a month… very quick at giving data back"; "flaws with Cloud Capsule on MFA" (36:52) |
| **M365 / Intune tenant, manually** | DLP, retention policies, conditional access — what Inforcer cannot see | "I have to manually go and check that one, they're on, and two, they're not erroring" (46:31) |

### The transport mechanism — the finding that matters most

> Elizabeth: "you pull that data, how do you get it? And how does it get in the form to be in this lovely spreadsheet?"
> Craig: "David, I have to put it in there."
> David: **"Pipes it in, copy paste to wherever it's coming from."** (37:53–38:01)

Export to Excel/CSV → **delete columns** → restructure → paste. On N-central specifically:
"the device report has got a million columns. We'll delete columns, restructure it to the way we
want it to look, copy it in." (38:09) `[CS: VERIFIED]`

---

## STEP 3 — RELATE

### CONFLICT — contradicts a live claim (blocks, per Principle VII)

| # | Claim in our material | What SRC-U-009 says | Where our claim lives |
|---|---|---|---|
| **C-06** | Risk framing is **NIST CSF 2.0** (+CIS+FAIR) | Technica aligns to **NCSC 10 Steps to Cyber Security** and **Cyber Essentials**. "we just go through the 10 steps of the NCSC… that's what's kind of formed that whole tab" (43:25); "We try to align clients to Cyber Essentials… this is the government guideline" (9:04) | `prototypes/qbr-draft-flow/qbr-hifi.html` — all 12 findings carry a `nistCode` and a "NIST CSF 2.0 ·" category; `qbr-system-blueprint` risk framework. **Note:** CONDUCT-LEDGER 2026-08-06 already recorded that the NIST choice was never actually decided and was reopened as Beth's call. This is the first primary evidence, and for a UK MSP it points elsewhere. |
| **C-07** | PSA is **ConnectWise Manage** | Technica runs **HaloPSA** | `qbr-hifi.html` seed data + the 7-source table. Nicole's SRC-M-003 integrations list already names HaloPSA as a target, so scope is fine — the *prototype's assumed default* is what conflicts. |
| **C-08** | Awareness training source is **KnowBe4** | Technica uses **uSecure** | `qbr-hifi.html` finding f8 evidence trail |
| **C-09** | Tab 2 Current Climate surfaces an **open-ticket count** | Tickets are explicitly **out of scope for an EBR**. "Things that shouldn't be discussed in an EBR… individual tickets. Number of tickets. Projects that are going on at the moment. That's got no place to sit in an EBR… This is not for the minutia." (20:00–20:24) | `qbr-hifi.html` `drRenderClimate()` — "4 open tickets" tile |
| **C-10** | Data strategy anchored on **N-central** as primary RMM telemetry | "we're not sure in two years time we'll be using RMM… most companies are going to move away from it because Intune's going to be doing pretty much everything" (28:47) | Market-shelf implication for every offering that assumes RMM as the durable data source. Owner's opinion, not fact — but it is the buyer's stated planning horizon. |

### RESOLVES — closes an open item

| Item | Where it was open | Resolution |
|---|---|---|
| **"What defines *good* — a baseline standard, or invented per-client?"** | Service-blueprint handoff, listed as still-open | **Neither.** Inforcer **golden tenant**, tagged on a **1–9 scale**: 1–3 business standard, 4–6 business premium, 7–9 E3/E5. "most of our clients sit at level 5 business premium with Intune… our ideal client would sit with business premium at our level 5" (33:13–33:32) `[CS: VERIFIED]` |
| **Who owns which of the 8 tabs** | My step list step 48, and Beth's "Jordan probably owns the tabs" | Confirmed and **colour-coded in their own document**: "where you see the orange, that's going to be Vanessa's piece. The blue in the middle is going to be mine." (19:04) Vanessa = account manager, client-relationship side, **100% of her time** on EBRs. David = technical, risk review, **80% of his time**, and sits in every EBR. `[CS: VERIFIED]` |
| **B7 · Verify Craig** | `datadump-manual-human-steps.md` — "Craig, the owner/partner, is not [verified]" | **Probably closed — Beth's call, not mine.** A 52-minute recorded interview with Craig Fisher, owner/partner at Technica Solutions (UK), who authorises spend ("I only wanted it because they said they could do some of the EBR reporting", 48:00) and states turnover of £2.5m. Whether this is the *same* Craig as the B7 persona-split buyer — and whether Technica's Vanessa is the same person as the already-verified "Vanessa Chart" — is an identity match I can infer but should not assert. `[CS: MEDIUM — same role, same country, same MSP shape; Beth knows who she interviewed]` |

### EXTENDS — sharpens an existing claim with primary evidence

| Claim | How SRC-U-009 sharpens it |
|---|---|
| The normalization gap (`[?]` A2 in the service blueprint — "named nowhere") | Now **named by the customer, in detail.** The gap is real *and* evidenced: a senior engineer deletes columns from a million-column export and pastes. Upgrade from "nothing names this" to "primary source describes it as the job." |
| Source-reconciliation / entity-resolution gap (`[?]` A3) | Evidenced, and worse than modelled — the disagreement is **inside a single vendor**: "whether you do the analytics report or doing the new asset report that's within N Central. You've got devices that, newer devices that are not appearing, older devices that are… so there's differences everywhere" (2:16) `[CS: VERIFIED]` |
| Data-freshness / observation-window gap (`[?]` A4) | "You can schedule those reports to e-mail, but it's not up to date for that second" (1:56) |
| Value Ledger hours baseline (prototype asks for a number) | Real range, **with a disagreement inside it**: Craig says 3 hours; David says "probably more like an hour and a half to two hours" without interruption (3:18). Both are in the same transcript. Do not average them — the gap between owner-estimate and practitioner-estimate is itself the finding. |
| EBR volume / cadence | 100 clients · **~250 EBRs per annum** · "divvied up on size, income" — quarterly / six-monthly / annual (12:10–12:26) `[CS: VERIFIED]` |
| Stated business case | Craig's target: David from **80% → 50%** of his time on EBRs. "David is an expensive resource and a very, very, very good resource… that would be very good use of money for us" (39:24). Constraint on cadence is David, not demand: "if David wasn't doing this bit, we could have more EBRs because he'd have the time to sit in them" (49:37) |
| EBR-as-liability-shield | "If a client has a cyber attack, it has to be on them, not on us" (15:20); "we've used the EBRs as a chance of documenting every quarter that we've told them" (24:16) |

### NEW — durable finding not previously on any shelf

**The pain is EBR #2 and #3, not #1.** Asked what the biggest hassle is, Craig answers
directly (46:59–47:54):

> "EBR #2 and EBR #3… You get varied benefit from doing the initial work once. David's still
> got to go back and check everything that we said we'll do in the first EBR, whether it's been
> done, but also has to keep repeating this all the time… **We're working off multiple
> spreadsheets. We're not utilising AI to say, well, where are the gaps here and have we done
> what we said we were going to do?** And normally you would get economies of scale. So we've
> done it once, we've put three hours into the first one, the next one's going to take 45
> minutes. That's not the case."

Why he can't shortcut it: "if you don't look at something with almost like a blank canvas, you
potentially somebody's gone in and changed something. You're going to miss something."

This is the product requirement in the buyer's own words, and it is a **continuity** problem, not
a generation problem. Every artifact we have optimises the first EBR.

### Market-shelf signal

Craig, unprompted, on where N-able should go: **"tighten up your relationship with Inforcer,
because Inforcer is going to be the tool that does this for people. Without a shadow of a
doubt."** (28:22) And his ask: **"literally populate this document at a touch of a button, you
would be saving us an awful lot of time and that would be worth money to us."** (29:40)

Also: Inforcer was bought *because* of EBR reporting and hasn't delivered it yet — "the EBRs
was the only reason why I authorized it… I only wanted it because they said they could do some
of the EBR reporting, which we're not getting any benefit from yet" (48:00). That is an
incumbent failing at exactly our proposed job, inside the account. `[CS: VERIFIED]`

---

## STEP 4 — DIFF / FLAG ROLLUP

| Artifact | New drift | Driver |
|---|---|---|
| `prototypes/qbr-draft-flow/qbr-hifi.html` | **CONFLICT** | C-06 (NIST taxonomy), C-07 (PSA), C-08 (uSecure), C-09 (ticket count) |
| Offering A brief (QBR/EBR prep) | **CONFLICT** | C-06, C-10; plus the EBR#2/#3 continuity finding reframes the value prop |
| `qbr-system-blueprint` | **STALE** | Risk-framework choice now has contradicting primary evidence |
| `briefs/ebr-service-blueprint-2026-07-29.md` | **STALE** | Real stack, real actors, real transport mechanism now available |
| Service Blueprint on FigJam (226:1670) | **STALE** | Built on a 7-source assumed stack; three sources are wrong for this MSP |
| `datadump-manual-human-steps.md` → B7 | **RESOLVES (pending Beth)** | See above |
| `.claude/skills/refresh-datadump/` | **ACTION** | Add `scout_input/` + `briefs/` to Step 1b sweep |

**Council?** C-06 and C-10 both hit value props, so per Part 2 Step 5 council fires *on drift* —
but only after Beth accepts this changeset. Not run.

---

## SCOPE & ETHICS NOTE

Participant data, used for the consented research purpose only (§10b · IRB standard).

**Deliberately excluded from this changeset and from every downstream artifact:** the named real
end-clients discussed in the call, and the sensitive material about specific charities and their
threat exposure. Not relevant to the EBR-production finding, and not ours to propagate. The
transcript itself stays in `scout_input/` as the source of record; extraction is
purpose-limited, per data minimisation.

Participant and MSP names are retained *here* because the existing datadump convention retains
them (`datadump-manual-human-steps.md` names Craig and Vanessa). Flagging rather than deciding:
if the standing anonymisation rule (2026-07-31) is meant to cover the datadump too, this file
needs a pass and so does that one.

---

## GATE — Step 5 is Beth's

**Accept** · **Edit** · **Reject**, per item:

1. Register SRC-U-009 on the user shelf
2. C-06 — NIST CSF → NCSC 10 Steps + Cyber Essentials. *Biggest downstream change. Affects every finding in the prototype.*
3. C-07 / C-08 — swap ConnectWise → HaloPSA, KnowBe4 → uSecure in seed data
4. C-09 — remove the open-ticket count from Current Climate
5. C-10 — log RMM-longevity as a market-shelf risk against RMM-anchored offerings
6. Reframe Offering A around **continuity** (EBR #2/#3) rather than first-draft generation
7. Close B7, or don't — the Craig/Vanessa identity match is yours to confirm
8. Add `scout_input/` + `briefs/` to the refresh sweep

---

## STEP 6 — SYNTHESIS

[0% — Beth]
