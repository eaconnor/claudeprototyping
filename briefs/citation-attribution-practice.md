---
title: Citation & Attribution Practice for AI-Derived Sources
type: personal-practice
status: active
last-updated: 2026-08-07
---

# Citation & Attribution Practice — Band Protocol Context

*Personal practice, not a policy. For research, briefs, and prototypes produced through the Band Protocol pipeline.*

---

## The core rule

**Cite what you've read. Not what Claude found.**

If Claude names a source and you haven't read it, that source goes on a reading list — not in a citation. AI-surfaced citations are a known hallucination vector. The NN/g "10–12" fabrication [CS: FABRICATION RISK] in `research-methodology-specs.md` is the standing example: fluent, specific, wrong.

---

## Three scenarios

### 1. Citing AI output itself

When the source you're actually citing *is* Claude's response — i.e., what Claude said about your own data, a synthesis it produced, a claim you're quoting from Band Protocol output.

**APA (Sept 2025 update):** [CS: VERIFIED — APA Style blog, published Sept 2025]

> Anthropic. (2025, Month Day). *[Title of conversation or chat].* Claude. [share link if available]

In-text: (Anthropic, 2025)

Disclose AI involvement in a Method section or research note: "I used Claude (Anthropic, 2025) to assist with [synthesis / analysis / formatting]."

**MLA (Aug 2025 update):** [CS: VERIFIED — MLA Style Center, published Aug 2025]

> "[Prompt or description of exchange]." *Claude*, Anthropic, Day Month 2025, [share link].

Neither style treats the AI as an author. The company (Anthropic) is the responsible entity.

---

### 2. Citing a primary source Claude named

**Do not cite it until you've read the relevant section yourself.**

This applies to everything Claude surfaces with [CS: HIGH] or below. "Well-sourced" means Claude's training data included it — not that the citation is accurate. Authors get renamed, page numbers drift, quotes get compressed. Verify independently before citing.

**Workflow:**

1. Claude surfaces a source → note it as "to verify"
2. Check the source actually exists (Google Scholar, library catalogue, DOI lookup)
3. Read the specific section Claude referenced
4. Once read: cite it normally using the standard format for that source type
5. [CS: VERIFIED] tag applies once you've confirmed it

If you can't access the source: don't cite it. "According to Claude, Tavory & Timmermans argue..." is not a citation — it's a hearsay report about a training corpus. Note the gap honestly.

---

### 3. Crediting AI involvement in synthesis / writing

When AI contributed meaningfully to the substance of a piece (not just formatting), disclose it in the document's front matter or methodology note. The Band Protocol already flags this via [CS:] tags at the claim level.

For professional deliverables (research reports, briefs shared externally):

- Add a disclosure line: "Research synthesis assisted by Claude (Anthropic, 2026). All cited sources independently verified."
- Don't suppress this to look more credible. The credibility is in the verification, not the silence.

GDPR note: research transcripts and participant quotes are never fed into AI synthesis passes without explicit consent for that use. This is purpose limitation, not just caution.

---

## How this maps to the [CS:] system

| CS tag | Citation implication |
|--------|---------------------|
| [CS: VERIFIED] | Cite normally — you've confirmed the source |
| [CS: HIGH] | Verify before citing — Claude's corpus includes it, but you haven't checked |
| [CS: MEDIUM] | Treat as a lead, not a source. Find the primary. |
| [CS: LOW] | Reading list only. Do not cite. |
| [CS: FABRICATION RISK] | Do not cite. Flag to Beth if it slipped into a brief. |
| [CS: UNKNOWN] | Beth's domain — Beth verifies, Beth cites |

[CS: HIGH] is the most important row. It is NOT permission to cite. It is permission to look it up.

---

## The IP/ethics layer

When Claude surfaces a framework (e.g., Tavory & Timmermans on abductive analysis), it's drawing on training data that included that work — without compensation to the authors or their institutions. That's an unresolved IP and ethics question that no style guide has resolved.

**Personal practice in response:**

- When Claude draws substantially on a specific author's framework, add that work to a formal reading list and acquire it (library, purchase, open access). Don't use it as if you'd read it.
- In research outputs, name the framework and its source explicitly — don't launder it as "our analysis suggests."
- If the source is a book and the Band Protocol work eventually becomes something public-facing or published, the reading list becomes a bibliography of works consulted, not just works cited.

This is values, not compliance. The principle is "offered, not taken" — sources are in scope because they were offered for use, not because Claude's training data happened to include them.

---

## Reading list protocol

A separate `briefs/to-read.md` (or inline in a brief's frontmatter) tracks sources Claude surfaced that haven't been verified yet. Format:

```
- Tavory, I. & Timmermans, S. (2014). *Abductive Analysis*. University of Chicago Press. [surfaced 2026-07-31 via Claude, [CS: HIGH]; verify chapter 3 on theoretical sampling]
```

Reading list items are never cited until they've been moved to "verified."

---

*This practice is a living document. Update it when norms shift — APA and MLA both updated AI guidance in mid-2025. Check for updates annually or when a new citation format is needed.*
