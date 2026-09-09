# Ecoverse — Riskiest Assumptions

*Citations use short keys — full paths in the Sources list at the bottom. `[A]` = my own proposal/inference, not something a source states directly — flagged so it doesn't get mistaken for research.*

**Assumption: Connecting categories (patch + backup + security) surfaces real, unrealized value.**
Candidate unmet needs — grounded in real, sourced pressures, but the specific ideas below are `[A]` my proposals, not validated with a customer:
- **"Am I actually protected, or just checking boxes?"** `[A]`. Grounded in a real, named gap: the deck's own "Prove the Outcome" pillar promises evidence of exposure reduced and security enhanced [DECK-0909], but nothing in Section 04 builds a mechanism for it — no report/evidence producer exists [DECK-0909, Differentiators table].
- **Seeing trouble before it happens.** `[A]` — my proposal, not stated anywhere in the source material. Loosely related to the undefined "RT system state" capability the deck names but never explains [DECK-0909, Killer-App slide].
- **Compliance and cyber-insurance evidence, assembled automatically.** Partly grounded: the deck names "increasing security, compliance and governance requirements" as a real, current pressure [DECK-0909, ITP ICP slide] and lists "Compliance assessment/reports: TBC per Taha research" as an unbuilt, open item [DECK-0909, Differentiators table]. The **cyber-insurance angle specifically is `[A]`** — my addition, not named in any source.
- **Faster "what actually broke" answers.** `[A]` — my proposal. Loosely tied to the deck's stated aim of "reduces effort, increases technician productivity" [DECK-0909, Working Hypothesis slide], but the specific mechanism is mine, not sourced.

**Assumption: This is valuable enough for existing customers to want, safe enough not to break anything, and shiny enough to pull in new customers — without cannibalizing what we already have.**
- The three-part framing is Beth's own bar, not derived from a source.
- **The real gap: we don't know why current customers picked what they picked.** Checked and confirmed absent: council's Jobs-to-Be-Done pass named the switch trigger "unsourced, unproven" [COUNCIL]; the dedicated web-research pass on why MSPs actually leave NinjaOne found only secondhand, low-confidence signal (pricing/support friction), and explicitly found "no source describing a competitor winning switches on a features/AI reason" [A1-JIRA, tagged `[CS: MEDIUM]`/`[CS: LOW]` in that file itself]. Nowhere in the corpus is there real research on *why* an existing N-able customer chose N-able, either — that absence is `[CS: UNKNOWN]`, not just unproven.

**Assumption: The AI will be reliable enough for people to trust it.**
The four reliability questions below are `[A]` — my own framing of what "reliable" would need to mean, not a source's language — but each is anchored to a real, sourced gap:
- Error-tolerance and escalation-when-uncertain: no threshold or standard is named anywhere in Section 04 [DECK-0909].
- Rollback/undo: named as a structural gap with no design in the first idea-chess pass — "no rollback/recovery design... belongs on Phase 1 critical path" [IDEA-CHESS-V1, §1.8/HOLE2].
- Consistency across environments: not addressed in any source; `[CS: UNKNOWN]`.
- All four questions matter more because the one screen that would show any of this in practice is currently broken: `FSN-90125`, "Ecoverse -> Unable to view the Coworkers UI," status Open as of the last check [JIRA-FOLLOWUP].

**Assumption: This makes money because it serves a real, unmet need in the market.**
- **Cyber-insurance leverage** `[A]` — my proposal, not named in any source. Flagging clearly since this is the least-grounded of the three and shouldn't be repeated as if it were researched.
- **Compliance-as-a-byproduct** — grounded in real, sourced pressure: "increasing security, compliance and governance requirements" [DECK-0909, ITP ICP slide] and the still-open "Compliance assessment/reports: TBC per Taha research" line [DECK-0909, Differentiators table]. The *packaging as a sellable outcome* is `[A]`, the *underlying pressure* is sourced.
- **Reduced incident cost** `[A]` — my proposal, loosely tied to the "Prove the Outcome" pillar's "exposure identified and reduced" language [DECK-0909], but the specific dollar-savings framing is mine.
- All three: no pricing, no willingness-to-pay data, and no margin model exist anywhere in the corpus, including Jira/Confluence [CRITIC, punch-list item P2#8; JIRA-FOLLOWUP, A5 section — search for internal pricing/economics modeling returned nothing].

**Assumption: Whatever we build here can't easily be copied.**
- That N-able owns Cove (backup) and Adlumin (security/MDR) alongside RMM is sourced fact, not inference: "Moved $s to Cove" and MDR described as a "$10M+ biz inside N-C in '25" [Q1-QLS-2025]; Adlumin appears as a native signal source in N-able's own architecture diagram alongside endpoint/patch/scripting data [Q1-QLS-2025].
- **Whether that ownership is actually harder to copy than a competitor partnering via API is `[A]`** — my own analytical question, not answered by any source. The deck's own language about Ecoverse being "open, extensible, built for AI | GraphQL + MCP" [DECK-0909, Killer-App slide] cuts both ways here — an open, API-friendly architecture is good for customers but may also make N-able's own advantage easier for others to approximate via integration, not just harder to copy. That tension isn't resolved anywhere in the source material.

---

## Sources

| Key | Full path / reference |
|---|---|
| DECK-0903 | `scout/ecoverse/ecoverse-gtm-deck-2026-09-03.md` |
| DECK-0909 | `scout/ecoverse/ecoverse-gtm-deck-2026-09-09-UPDATE.md` |
| COUNCIL | `scout/ecoverse/council-ecoverse-2026-09-03.md` |
| CRITIC | `prototypes/ecoverse/critic-pass-1.md` |
| A1-JIRA | `scout/ecoverse/riskiest-assumptions/01-A1-killer-app-switch-trigger.md` |
| JIRA-FOLLOWUP | `scout/ecoverse/riskiest-assumptions/07-followup-atlassian-sharepoint-2026-09-09.md` |
| IDEA-CHESS-V1 | `prototypes/ecoverse/idea-chess-ecoverse-2026-09-09.md` |
| Q1-QLS-2025 | `Q1_QLS_2025_RMM_Upload_FINAL_NILLER.pptx` (N-able internal, SharePoint, GeneralNillerTeam site) |
| FSN-90125 | Jira ticket, n-able.atlassian.net — "Ecoverse -> Unable to view the Coworkers UI" |
