# acp-ux.md (Harness) — README

Human orientation for [`acp-ux.md`](acp-ux.md). The ux.md itself is the machine-first spine; this file is the narrative that used to live at its top. If they ever disagree, the ux.md wins.

**What the file is:** one file both design and acp-core eng can open and trust is current — no separate designer-doc / eng-doc fork. Machine-readable frontmatter + tags up top; human synthesis below; §6 doubles as literal UX acceptance criteria, not just narrative.

## How each reader uses it — not just reads it

- **Design:** read Gate 1/2 (§1, §2, §3, §5, §7) *before* sketching — the "am I solving the right problem for the right person" check. When reviewing a design or prototype, check it against §6's Musts using the paired Built-in Test, not against taste.
- **Eng:** §6's Gate 3 half (Tasks, Function/feature structure, Musts, Built-in Tests) is the literal acceptance-criteria layer — build against it. Several Built-in Tests are already machine-checkable (ticket-conversion, artifact-freshness, content-ratio) — they can become literal automated evals on a Coworker's output, not just a PR checklist.
- **AI in spec:** if an AI is asked to spec or build an offering that has a mini, **that mini is required reading before `speckit-specify` runs, not optional background.** The mini's Gate 3 content cites directly into the generated Intent Spec's acceptance-criteria section — re-deriving it is exactly the failure this apparatus prevents. Gate 1/2 content stays advisory to the AI — it can read and flag a conflict; it cannot resolve an open decision or promote a `PROPOSED` tag on its own.

## The three questions the researcher asks — before you sketch or ship

- **Am I making something that provides value?** Which task in §6 does this serve? If none — is this scope creep?
- **What am I missing?** Which claims in the section I'm building against are still `[A]`/`[?]`/`[PENDING]`? Would a different resolution change the design?
- **Why does this matter?** Is the pain named in §1? Is the person most affected in the cast list? If not, that person hasn't been named yet.

The AGENT GATE in the ux.md enforces these as machine-checkable rules.

## Gate vs. confidence — the two axes people conflate

A Gate 1/2 section can be `[CS: VERIFIED]` (a well-sourced persona is still a live judgment about which problem to prioritize). A Gate 3 section can still be `[PENDING]`. **Gate tag = how much this is still design's to change. Confidence tag = how well-evidenced it is now.** Eng: treat Gate 1/2 as context you need, not spec to build against — §6's lower half and §8 are the stable layers.

## If Beth's not around

The file is built to keep working without her. What you *can* do alone: add evidence (save the source into `scout_input/` with provenance, register it in the datadump, add it to `built_from:`), correct claims (change the text, change the tag if evidence changed, date it in the CHANGELOG — never silently delete a wrong number, mark it ☠), improve tests, run the next Idea Chess/Council pass, build prototypes with fictional data. What you *route, don't decide*: anything 🔴 open goes to the owner named in the row (Beth → Meaghan → Nicole). The one thing never to do: fill a `[0% Claude — fill this in]` slot with AI text. Those are judgment slots — human or empty.
