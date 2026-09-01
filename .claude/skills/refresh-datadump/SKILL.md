---
name: refresh-datadump
description: >
  Weekly (or on a STALE flag) refresh of the research datadump. Gathers new findings
  from the Brain Dump Teams channel + sources, catalogs them onto shelves with provenance,
  uses scout to relate them to existing specs, surfaces open questions, and STOPS at a
  human review gate. A person approves a proposed changeset (Accept/Edit/Reject); only
  then are spec docs updated and STALE flags cleared. Never auto-writes synthesis.
---

# refresh-datadump

The weekly research reconcile, runnable by anyone. Automated up to the human gate; the
human only approves drafts. See `datadump-reconcile-runbook.md` for the plain-language version.

## When invoked
- Weekly (scheduled), or
- Any time a spec shows `drift: STALE`, or
- A person asks to "run the datadump refresh."

## The loop

### 0. LOAD RELEVANCE (auto — do this first)
- Read the datadump index page (Confluence "ACP Research Datadump (living)", space AI,
  page 62175674556) and build a **dismissed set**: every source whose Relevance is
  `Not relevant`.
- The Relevance column is the source of truth for scope. `Not relevant` = skip entirely.
  `Review` / `Relevant` = in scope.

### 1. GATHER (auto)
- Pull new messages from the **Brain Dump** Teams channel
  (`19:OlTtVVyAz8wISWXG2Jfi-9xSIAqBe4k-No9OAmHb1bM1@thread.tacv2`) since `last_run`.
  Use `chat_message_search`; filter results to that `chatId`. Use `read_resource` for full text.
- Pull any new/changed sources already registered in the manifest (re-hash them).
- **Skip every source in the dismissed set** — do not gather from it, do not re-add its
  findings. Log the count skipped (e.g. "skipped 3 Not-relevant sources").
- Exception: if a dismissed source produces genuinely NEW content that would CONFLICT with
  an active spec, note it once in `_inbox` as "previously dismissed — re-surfaced?" rather
  than silently resurrecting it. The human decides whether to un-dismiss.

### 1b. SWEEP THE AI WORKBENCH (auto — Claude chats, Copilot chats/docs)

A lot of ACP/harness thinking happens in AI sessions and never reaches Confluence or the Brain
Dump. Sweep it — but **classify it correctly, because it is the most dangerous shelf in the
datadump.**

**Where to look:**
- **Claude Code sessions** — `list_sessions` + `search_session_transcripts` (ccd_session_mgmt).
  Query ACP/harness vocabulary: `ACP` · `harness` · `coworker` · `runbook` · `Value Ledger` ·
  `control plane` · `Idea Chess` · `QBR` / `EBR` · `vCISO` / `vCIO` · offering names · the
  gate names (`Q1`, `data-egress`, `Q2`).
- **Teams** — `chat_message_search` beyond the Brain Dump channel; Copilot summaries and
  meeting recaps get pasted into channels and DMs.
- **SharePoint / OneDrive** — `sharepoint_search` + `sharepoint_folder_search` for
  Copilot-generated docs, meeting recaps, transcript exports (these are where Copilot output
  actually lands and persists).
- **Outlook** — `outlook_email_search` for Copilot-drafted summaries circulated by email.
- **M365 Copilot chat history is NOT reachable via MCP.** Its *outputs* are (as docs, recaps,
  emails, Teams messages) — sweep those. If someone's Copilot thread matters, it needs a human
  export. Log it as a gap; never imply it was swept.

**Shelve these as `derived` — a new shelf. NOT `user`, NOT `market`, ever.**

An AI chat is **a record of reasoning, not evidence.** It may contain confident invented detail
(the Chicago principle, and it applies double here: a fabrication that has been through a
synthesis step reads *more* authoritative, not less). Shelving a Claude chat as `market` is how
a hallucination becomes a citation.

**Harvest each hit into exactly three buckets:**
1. **DECISIONS** — what a human actually decided, and when. Legitimately useful; often the only
   record of a call that was made in conversation and never written down. Register with
   session id + date + who decided.
2. **CLAIMS** — anything asserted as fact. **These enter as `[?]` and MUST be re-verified
   against a primary source before they touch a spec.** A claim's appearance in a chat is
   evidence that someone said it, nothing more. Carry the original `[CS:]` tag if one exists;
   if it doesn't, that absence is itself a flag.
3. **★ CITED SOURCES** — the real prize. If a chat references a study, a page, a competitor
   doc, a transcript: **follow the citation and register the SOURCE, not the chat.** This is
   how the AI workbench actually earns its place in the pipeline — as a finding aid for
   material that already existed and never got indexed.

**Hard rules for this step:**
- **Dedup by claim, not by chat.** The same assertion recurring across six sessions is *one*
  claim with low independence — not six corroborating sources. Model output is correlated by
  construction; treating repetition as corroboration is the single worst failure mode here.
  Same rule that killed the "independent agreement" claims in the Jul 28 EBR sweep.
- **Provenance is mandatory:** session id · date · model · which human was in the loop. A chat
  with no identifiable human decision-maker is `_inbox`, not `derived`.
- **A claim that originated in a chat can never be promoted past `[A]`** on chat evidence
  alone. Only a primary source moves it to `[R]`/`[D]`.
- **Never let a `derived` item satisfy step 4b's SUPPORTS test.** An AI session cannot resolve
  a riskiest assumption about the real world. It can only tell you the assumption was discussed.
- Log the sweep's scope explicitly: what was searched, what was not reachable (Copilot history),
  how many sessions matched. Silence must not read as coverage.

### 2. CATALOG (auto)
- Sort each new item onto a shelf: `user`, `market`, `derived` (AI-session output — see 1b), or
  `_inbox` (unknown → park, tag `[?]`).
- `derived` must render visually distinct from `user`/`market` wherever the shelves are
  displayed. It is reasoning about the evidence, not evidence.
- Register in the manifest: id · shelf · source permalink · contributor · date · hash.
- Provenance is mandatory. An item with no source stays in `_inbox` as `[?]`.

### 3. RELATE (auto — spawn scout)
- For each new item, determine which existing specs/findings it touches.
- Re-hash every source in each spec's `source_material`; set per-source drift
  FRESH / STALE / CONFLICT.
- Roll up each spec's `agent_context.drift` = worst of its sources.
- **context.md files (`briefs/context/*.context.md`) are specs for this purpose.** Re-hash every
  path in each one's `built_from:` frontmatter list the same way. A context.md's `drift` field
  flips STALE the moment any of its `built_from` sources changes — same mechanism, not a second
  system.

### 4. QUESTIONS (auto)
Build a **proposed changeset** — a plain list:
- new findings to accept (each with its source link)
- what each would change, in which spec
- open questions the new evidence raises
- **CONFLICTs** (new evidence contradicts a spec claim) flagged at top
- **For any context.md flagged STALE:** also surface every section still carrying `PROPOSED`,
  `[A]`, or `[?]` in that file, separately from the drift itself. Drift means *a source moved*;
  a `PROPOSED`/`[A]`/`[?]` tag means *this was always waiting on Beth's interpretation, source
  moved or not*. Don't conflate the two — a freshly-STALE file can have zero open-interpretation
  items, and a fully-FRESH file can still be full of them.
- **Include step 4c's North Star touch-log line in the changeset**, even when every row came
  back "not touched." This is the one line in the changeset that must never be silently omitted.

### 4b. SUGGEST — enrichment (auto)
The mirror of drift: not "did a source move" but "is there new/unmined evidence that should
change an existing bet." For each **active brief/spec**, take its riskiest assumptions +
open questions + `[A]`/`[?]` claims and use them as queries against the evidence base
(new Brain Dump, incoming Guidepoint rounds, Condens, Qualtrics, web). Classify each hit:
- **SUPPORTS** → propose `[A]`→`[R]`, cite the source
- **EXTENDS** → new nuance to add
- **CHALLENGES** → CONFLICT (same as drift) → human decides

Add suggestions to the changeset, grouped by brief. This turns the riskiest-assumptions
register into a **watch-list** — a 🔴 assumption stays open until evidence resolves it.

**On-demand mode:** this step also runs standalone against a single brief ("suggest evidence
for the MVP brief") without a full gather.

### 4c. RISK REGISTER CHECK (auto, every run — not conditional on a resolve or a conflict)

**This step exists because it's the one that's easiest to silently skip.** 4b checks new
evidence against a *brief's own* riskiest assumptions; this step separately, explicitly checks
it against every row of the **North Star Vision Risk Register** (ACP MVP — Concept Brief,
Confluence 62176526400) — Q1, Q2, every P0/P1/P2 row, every Answered/Confirmed row. Do this
**even when 4b found nothing spec-level to change** — the North Star is where every brief
ladders up, and a touch that's too thin to matter to one brief can still be worth logging at
the portfolio level.

For each register row, classify this run's new evidence:
- **SUPPORTS** → likelihood or status could move; propose the change, cite the source
- **EXTENDS** → adjacent-field or partial evidence that bears on the row without resolving it
  (e.g. SaaS-CS practitioner evidence touching the MSP-specific Q2) — log it as a **touch**, not
  a status change. Don't let an EXTENDS masquerade as progress.
- **CHALLENGES** → CONFLICT, same escalation path as step 3's drift
- **NOT TOUCHED** → say so. A row with nothing new this round still gets a line — "not touched
  this round" is a valid, expected, and required entry, not a gap to leave implicit.

**Output: a touch-log line for this run, covering every row, added to the North Star page
itself** (a running log, not just the changeset) — so the next person reading that page sees
what was checked and when, not just what changed. Format: `date — what was checked — which
rows touched (with a one-line why) — which rows explicitly not touched.`

**Escalate per the same rule as step 3:** a CHALLENGES-classified row escalates immediately
(it's a CONFLICT). A SUPPORTS or EXTENDS row does not need a ping — it surfaces in the
changeset for step 5 like everything else. A run where every row is "not touched" is not an
error — some rounds genuinely don't touch the portfolio-level bets — but it must still say so
explicitly on the North Star page, not go unlogged.

### 5. REVIEW (HUMAN — the gate)
Present the changeset. For each item the human does one of: **Accept / Edit / Reject / Accept-as-interpretation**.
- This is approval, not authoring. Do NOT write synthesis on the human's behalf.
- No source → reject (a guess wearing a fact's clothes).
- Unresolved → leave in `_inbox` ("don't know yet" is valid).
- **Accept-as-interpretation** (expected often): the human accepts an open assumption as their
  *best current interpretation* to move forward — NOT evidence-confirmed. Register it 🔵 with
  **owner + date + "revisit if contradicted."** It MUST stay visually distinct from 🟢
  Confirmed so an interpretation never reads as evidence. This is a legitimate, recurring
  verdict — the register becomes a live map of *what's evidence vs what we've chosen to assume.*

### 6. UPDATE (auto, after approval only)
- Apply approved changes to the spec docs' synthesis sections.
- Re-hash touched sources; set `drift: FRESH`, update `reconciled_at`.
- Record unresolved items as named open questions.
- **Roll up:** update the **Vision risk register** on the North Star (ACP MVP — Concept Brief,
  Confluence 62176526400) — resolved assumptions flip status, new CONFLICTs are added, **and
  step 4c's touch-log line gets written to the page regardless of whether anything flipped.**
  Everything ladders to the North Star; the register is the live "is the bet still sound" view —
  and the touch log is the record that it was actually checked, every run, not just when
  something happened to resolve.
- Stamp `last_run`.

## Escalation ("stale that matters")
Staleness is discovered by running, not pushed. So after step 3, escalate to a human
(ping + surface at top of the changeset) ONLY when drift *matters*:
- a **CONFLICT** (including a step 4c CHALLENGES against the North Star register), or
- a **STALE** source that feeds a spec whose status is active/in-build.
Trivial drift (a parked `_inbox` item, a market note under no live spec) stays quiet. A step 4c
SUPPORTS/EXTENDS/NOT-TOUCHED entry is not an escalation on its own — it still gets logged, just
without a ping.

## Hard rules
- Gather is automatic; **synthesis is human**. Never collapse findings into a spec unattended.
- Every finding traces to a source. Verify stats before quoting (47% rule).
- Real interviewee names stay out of any customer-facing output.
- If run autonomously (scheduled), complete steps 1–4 (**including 4c**), post the changeset
  for review, and STOP. Do not perform step 6 without human approval.
- **The North Star risk register gets checked every run, full stop.** "Nothing in this round
  touched the portfolio-level bets" is an acceptable outcome; not checking is not. If a run
  skips 4c, it isn't a completed run.

## Data ethics — GDPR / authorization

- **Data minimization.** Gather only what the stated research purpose requires. If the brief
  is "MSP QBR tooling needs," board minutes and financial projections are out of scope even
  if technically reachable.
- **Purpose limitation.** Research data gathered for ACP stays in ACP. Interview quotes are
  not seed data. Condens transcripts are not marketing material. A finding gathered for one
  brief cannot be silently repurposed in another.
- **Offered, not taken.** A source is in scope only if it was offered — published, shared,
  or accessible with the intent of being used. "Technically reachable" is not a legitimate
  basis. If access would require circumventing a permission boundary, stop.
- **Authorization-level rule.** Beth's authorization = this pipeline's authorization. Do not
  access repos, channels, documents, or systems Beth is not authorized to access. If
  information arrives that Beth was not supposed to receive — a board doc surfaced in a
  routine search, a private repo exposed by an API — stop immediately. Do not catalog it,
  do not reference it, flag it to Beth. Treat it as unseen.
- **Research ethics (IRB standard).** Participant data — interview transcripts, session
  recordings, quotes — is used only for the purpose participants consented to. Never used
  to identify individuals without explicit consent. IRB principles apply regardless of
  whether a formal IRB process was required.
- **No illegal acts.** Nothing in this pipeline does anything illegal — not for speed, not
  for competitive advantage, not because an employer asked. UK law. GDPR. Full stop.
