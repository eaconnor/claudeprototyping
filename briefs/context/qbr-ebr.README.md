# qbr-ebr.ux.md — README

Human orientation for [`qbr-ebr.ux.md`](qbr-ebr.ux.md) (the QBR/EBR offering, a mini of [`acp-ux.md`](acp-ux.md)). The ux.md itself is the machine-first spine; this is the narrative that used to sit at its top. If they disagree, the ux.md wins. Every unusual term is in the Glossary at the bottom of the ux.md.

## If Beth's not around — the work continues

The rules that keep the file trustworthy:

- **Add new evidence:** save the source into `scout_input/` with a header (what it is, where it came from, the date). Register it on the "ACP Research Datadump" Confluence page — *if it's not linked, it's not a source*. Add it to the ux.md's `built_from:`.
- **Update a claim:** change the text, change its trust tag if the evidence changed, and **date it in the CHANGELOG** (bottom of the ux.md). Never silently delete a number that turned out wrong — mark it ☠ with a note so nobody re-derives the mistake.
- **Quote a statistic:** only after you've opened the source yourself (the 47% rule — a file once self-reported 47%; the count was 80%).
- **Two sources agree?** Check whether one *learned it from the other* first (our prep-time figure was one teacher and her student — echo, not corroboration).
- **Run the next pass:** Idea Chess and Council are repeatable — prior runs in `briefs/` show the format.
- **Make a decision:** you mostly don't — you *route*. Anything 🔴 open goes to the owner named in the row.
- **Never:** fill a `[0% Claude — fill this in]` slot with AI text. Those are judgment slots — human or empty.

## If you're a designer

**Read first:** §1 (the people — the delivery lead's 4A's are your design target) · §2 (the journey: 26 moments, and the 15-tab template that is the *real* artifact spec) · §6 (the Musts, the quality bar, Operating Principle 3 — the chooser-shaped draft is an interaction spec hiding in prose). Story version: [`story-qbr-chapter-draft-2026-07-31.md`](../story-qbr-chapter-draft-2026-07-31.md) — faster to absorb, but the ux.md wins where they differ.

**Yours to build now, no permission needed:** the frankenprototype draft-landing screen (fictional dental practice). Three tests before any production code: walk every §6 task *as the delivery lead* and flag where she can't tell what to do / whether she did it right; 5-second test the confirm-gate on 3 people; count business-outcome vs. technical-metric sentences (Must 1).

**Constraints:** two documents, never a hide/show toggle (Must 6) · Unverified claims hard-blocked, not warning-labeled · keep it ugly (Tier 1 = reactions, not validation) · fictional data only · tokens in `.claude/agents/build.md` (brand purple verified; dark-mode not — flagged). Design-system check: `design_lint: static-tokens` (Apex snapshot; see `_ux-template/GUIDE.md` § Design-system lint).

**Yours to change:** Gate 1 and Gate 2 are design's living judgment. Disagree with a framing? Change it, date it, tag it — that's the file working.

## If you're an engineer

**Read first:** §6 lower half — the 8 Musts each carry a built-in test; those are your acceptance criteria (most machine-checkable: ticket-conversion, artifact-freshness, internal-vs-export diff, liability-language flag). Then §5a (the DIV log) and the CHANGELOG's 07-31 entry (the current board and Q3).

**Gates:** Gate 3 is your stable layer — build against it. Gate 1/2 are context, not spec — expect them to move.

**Clearest build targets:** PSA ticket writeback (Must 3 — one competitor does this; Stef H.'s "#1 killer" when absent) · the dual-surface data model (two artifact objects; a visibility flag is a known failure, not a shortcut) · the hard gate on the Unverified tier (logic exists over `baseline_source` — wiring, not inventing) · a first Value Ledger producer (built, renders $0).

**Push back, loudly, on:** treating an `[A]` as fact · "encryption settles the data-legality questions" (§5 — it's a security control; Q1 is rights, Q3 is knowledge) · scope assuming coworker-to-coworker orchestration (v1 non-goal; the visibility concept dies on exactly this).

**Contribute back:** when a build changes the coverage tally (0 built · 1 specced · 8 adjacent · 17 absent), update §2/§8 and date it in the CHANGELOG.

## If you're in marketing, a Head Nerd, or another insight person

You mostly **read a slice** and **contribute what you're seeing** — you don't fill the file.

- **Marketing:** your slice is §1 / §1a (problem, friction, why-this) · §3 (value webs) · §4 (sustaining/disruptive + category framing — note "lifecycle management" is *not* safe to assume as the buyer's own vocabulary). The outcome we're grading against is **business growth** (referrals / new projects / retention), not time-saved — time-saved is an operator-side efficiency measure, kept off the client-facing artifact (DIV-004).
- **Head Nerds / enablement:** your slice is §1 (the cast, the 4A's) and §2 (the journey + the 15-tab template) — align training against it, and flag where the file's read of a partner differs from yours. You are also the richest *source* the corpus has (Stef H.'s interview is the spine of §1/§6) — new partner signal is gold.

To add what you're seeing, use [`CONTRIBUTE.md`](CONTRIBUTE.md) — you don't need to learn the tags or touch the ux.md.
