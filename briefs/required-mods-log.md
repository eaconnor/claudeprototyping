# Required Mods — Running Log

Running log of protocol/behavioral modifications decided in session, staged for propagation into
`acp-core-main-3/specs/_ux/acp-ux.md`, its mini-docs, and/or the speckit constitution.

**How to read:** each entry states what changed, where it landed live, whether it still needs to
propagate to the spec-side ux.md / constitution, and the paste-ready text. `PROPAGATED` = already
carried into spec/ux.md or constitution. `PENDING` = landed in CLAUDE.md only, not yet in spec docs.

---

## 2026-08-17

### MOD-001 — UX is problem-first, not typology · `PENDING`

**What:** Default output mode must anchor "ingredients" to a named user/product problem. A taxonomy
is not a deliverable; don't answer a domain question with more domain question.

**Trigger:** live failure — a game-theory brainstorm answered with three rounds of narrowing
academic categories, never asking what problem it served. Beth: "UX is solving USER PROBLEMS not
being a cake decorating wireframer."

**Landed:** [CLAUDE.md §3](../CLAUDE.md) (OUTPUT MODE — "Anchor requirement"). Memory:
`feedback_ux_problem_first_not_typology`.

**Propagate to spec/ux.md?** Candidate for the AGENT GATE block (the "Required before any spec,
build, or critique output" list) — a gate rule that ingredients must trace to a Gate 1 problem.

**Paste-ready:**
> **Anchor requirement:** Ingredients answer a named user/product problem. UX is solving user
> problems, not decorating wireframes — a taxonomy is not a deliverable. If the fragment doesn't
> name the problem, ask before generating frameworks, categories, or domain typology. Do not answer
> a domain question with more domain question.

---

### MOD-002 — Unknown is a terminal answer, not a low-confidence one · `PENDING`

**What:** Sanctions *not guessing*. The [CS:] tags label a guess; nothing yet permits producing no
answer. "I don't know" is a complete, acceptable output — decline to generate rather than ship a
fluent answer wearing a [CS: LOW] tag.

**Trigger:** Beth's read that the AI, not the commit layer, is the entity that must operate on
partial info — and that Claude handles uncertainty worse than humans (fluency decoupled from
knowledge; collapses the distribution; over-updates toward the interlocutor). The whole [CS:]/[A]/[?]
apparatus is a prosthetic for a metacognitive gap. This adds the one missing move: honest silence.

**Landed:** [CLAUDE.md §4](../CLAUDE.md) (under the Chicago principle).

**Propagate to spec/ux.md?** Constitution-level (universal epistemic norm), not project-scoped.
Strong candidate for the speckit constitution. For a constitution, drop the second (Band-specific)
paragraph — keep the principle, cut the §18/Beth references.

**Paste-ready (constitution-neutral):**
> **Unknown is a terminal answer, not a low-confidence one.** Confidence tags label a guess; this
> sanctions *not guessing*. "I don't know" is a complete, acceptable output — when the knowledge
> isn't there, decline to generate rather than shipping a fluent answer wearing a low-confidence
> tag. A tag is not permission to guess; a hedge is not an answer. Name what you don't know, name
> what would resolve it, and stop. The absence of an answer is data, not failure.

**Honest limit (keep with it wherever it lands):** a written norm makes silence legitimate and
raises the odds it gets used, but cannot install the edge-detection the model lacks — the model can
still fail to notice it is guessing. Structural moves carry more weight: the human abducts first,
verify the primary source, prefer structures that forbid premature collapse. Add it; do not file it
as solved.

---

---

## 2026-08-21

### MOD-003 — No invented grounding: the tag is not the fix, the citation is · `LANDED — CLAUDE.md + critic.md + spec.md`

**What:** A [CS:]/[R]/[D] tag describes confidence; it doesn't license shipping an ungrounded claim. Every factual claim, quote, persona detail, and stat now needs a real locatable source (file path, Confluence page, Jira key, transcript + timestamp) next to it. Enforcement added at two points, not just as prose: critic's punch list gained `UNSOURCED` and `SINGLE-SOURCE` categories (FAIL severity); spec's hard rules now require [R]/[D] tags to carry an inline source or downgrade to [A]/[?].

**Trigger:** Insights report 2026-08-21 named source verification as the dominant friction category (invented seed data, unvalidated trust-scale items implied as Jian et al., single-transcript over-anchoring on the QBR story, test-bed artifacts misread as independent evidence). Beth, same session: "source verification is the biggest problem. must fix that."

**Landed:** [CLAUDE.md §4](../CLAUDE.md) (new paragraph after the Chicago principle); [.claude/agents/critic.md](../.claude/agents/critic.md) (Source check step + punch-list categories); [.claude/agents/spec.md](../.claude/agents/spec.md) (hard rules).

**Propagate to spec/ux.md?** Strong candidate — this is exactly the shape of rule the AGENT GATE block wants (a gate rule that a claim must trace to a Gate 1 source), and it's now enforced at critic, the stage `acp-ux.md`'s own gates already run through.

**Paste-ready:**
> **No invented grounding.** A confidence tag is not a citation. Every factual claim needs a real, locatable source before it ships — file path, page URL, ticket key, or transcript timestamp. An ungrounded claim is Unknown; it does not ship dressed as a finding. A synthesis resting on fewer than three independent sources names that fact rather than presenting as settled.

---

### MOD-004 — External-facing writing: plain language, edit her wording · `LANDED — CLAUDE.md §1`

**What:** Teams posts, interview scripts, and stakeholder copy get plain language — no spec jargon, no framework names, no "leverage/enablement/surface(s) the." If Beth already drafted it, edit her wording rather than replacing it with new framing. No closing pleasantries.

**Trigger:** Insights report 2026-08-21 — largest single friction category was tone/register on writing deliverables, costing multiple correction rounds per artifact (Teams post open questions, EBR interview script, Craig Fisher script).

**Landed:** [CLAUDE.md §1](../CLAUDE.md).

**Propagate to spec/ux.md?** No — Band-specific voice preference, not a constitution-level norm.

---

### MOD-005 — Correct title and the two-Beths distinction, in CLAUDE.md itself · `LANDED — CLAUDE.md`

**What:** Maintainer line corrected (was "Beth Schwindt," should read Beth Connor, with Schwindt noted as her maiden/publication name). §13 now states her real title (Manager, User Experience — not "Apex UX Manager") and the Beth Nam distinction directly in CLAUDE.md, not only in memory.

**Trigger:** Insights report named a Beth Connor / Beth Nam conflation as a real trust cost, "despite an existing memory flag." Checking CLAUDE.md live during this session's edit found the flag *itself* was only in memory (`user_identity.md`) — the file loaded every session, which carries "OVERRIDE any default behavior," had the wrong name on line 4. Memory isn't guaranteed to get read; CLAUDE.md is.

**Landed:** CLAUDE.md header + §13.

**Propagate to spec/ux.md?** N/A — this is Band-project identity, not spec content.

---

### MOD-006 — File-finding, scope discipline, delivering files · `LANDED — CLAUDE.md §14`

**What:** Three new bullets in Response Defaults: (1) search (`rg`/`mdfind`/project dirs) before asking Beth where a file is; (2) deliver exactly what was asked and stop — name extras as suggestions, don't build them; (3) shareable output means an absolute local path (+ URL if one exists), not a SendUserFile default, and don't assume markdown previews cleanly.

**Trigger:** Insights report 2026-08-21 — a "you are making me do work. demerits." rebuke for asking for a path before trying `mdfind`; 7 excessive-changes/user-rejected-action events from unrequested tickets/sections; a SendUserFile rejected as "not an actual send"; markdown rendering as raw code in preview.

**Landed:** CLAUDE.md §14.

**Propagate to spec/ux.md?** No — operational/Claude-Code-specific, not spec content.

---

### MOD-007 — Confluence writes: sequential, verify by re-read · `LANDED — CLAUDE.md (AGENTS section)`

**What:** One Confluence page write at a time, never parallel. Re-read after every write and diff against intent — a reported success has landed as an unconfirmed write before.

**Trigger:** Insights report 2026-08-21 — two Confluence page updates returned internal errors that had actually succeeded, and an oversized-parallel-payload pattern was named as a recurring failure.

**Landed:** CLAUDE.md, directly under the Jira/Confluence line in the AGENTS section.

**Propagate to spec/ux.md?** No — operational, Atlassian-connector-specific.

---

### MOD-008 — SOURCES.md: provenance carried in the artifact, not just checked and discarded · `LANDED — CLAUDE.md §9b + critic.md`

**What:** Every handoff packet now requires a `SOURCES.md`, shaped like the existing `prototypes/acp-qbr-analyst/SOURCES.md` (⭐ start-here list, read-for-the-question map, trust ladder, named do-not-cite traps) rather than a flat claim→source table invented fresh. Assembled at handoff (step 6), compiled from what spec/build/critic already sourced — not new research. Critic's Source check (MOD-003) now explicitly feeds it: fix or cut `UNSOURCED`/`SINGLE-SOURCE` findings before SOURCES.md is written, since it inherits whatever critic missed.

**Trigger:** Beth, 2026-08-21, same session as MOD-003: wanted provenance carried in the artifact itself, not just checked and discarded by critic. A real example of the shape already existed in the corpus (`acp-qbr-analyst/SOURCES.md`) — formalized that instead of inventing a new table format.

**Landed:** [CLAUDE.md §9b](../CLAUDE.md) (Handoff packet structure — new required file + shape spec); [.claude/agents/critic.md](../.claude/agents/critic.md) (Source check now names SOURCES.md as where its findings land).

**Propagate to spec/ux.md?** No — this is Band Protocol's own handoff-packet convention, not spec/ux.md content.

**Status: shipped, not yet exercised.** No prototype has gone through step 6 since this landed. First real test is whichever project runs the full pipeline next — check then whether SOURCES.md actually gets produced, and whether critic's `UNSOURCED` flags cleanly feed it or get skipped under time pressure. Same watch-and-iterate discipline as MOD-003 (see CHORES.md, 2026-08-28 action).

---

*Appending as we go this session.*
