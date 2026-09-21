# Candidate `UXI-##` rows — for §5 of the Intent Spec

**Status: candidates. Nothing here is written into the Intent Spec.** Accept, rewrite or
bin each one. §5 rows are design judgment and they are yours; this is a first draft to
react to, with each `basis:` tag computed rather than asserted.

**Scope.** Drawn from `scout_input/MSP_QBR_EBR_Abductive_Analysis.xlsx` (sheet
*Abductive Analysis*, 54 theme rows + 14 source-attribution rows). So these describe the
**EBR/QBR coworker experience**, not ACP's platform layer. If §5 covers the whole
platform, these belong under a scoped sub-heading or a per-feature mini spec.

Every citation below gives **row number *and* row title**. Row numbers alone are not
safe — I mis-cited five of them on the first pass of this document by carrying numbers
forward instead of re-resolving them against the file. Title plus number means the next
misread is self-detecting.

## How the basis tags were computed, and why most are `[A]`

The sheet is **desk research** — vendor blogs, practitioner LinkedIn posts, a Reddit
thread, Gartner, ConnectWise, Salesforce, Kelser, Exigent, Taskade. No participants.
That is `population_fidelity: none`, which caps anything resting on it alone at LOW, and
§5's own note is explicit: *"If `evidence_basis:` is `HYPOTHESES`, every row here should
be tagged `[A]`."*

A row gets `[R]` **only** where your abductive reading and a primary finding in
`findings.yaml` independently agree. Four do. The rest are `[A]`, honestly.

**No numeric target appears in any candidate.** The sheet carries 80% (row 56, *80% Prep
Time Reduction*), 80/20 (row 37, *The 80/20 AI Automation Problem*) and 99/1 (row 51,
*99/1% Automation Boundary*). You already read the convergence correctly at row 51 —
*"the boundary is consistent in direction — only its position varies"* — and direction is
what a requirement can carry. The number is vendor and practitioner self-report; a
requirement carrying it would be overclaiming by construction.

**Your own scoping instruction sits at row 40, col 4** and I have treated it as binding
on which candidates are worth writing at all:

> "N-able's opportunity is NOT in the automatable 80% — that market is served. The gap is
> in the human 20%: how do MSPs run better strategic conversations once the data is ready?"

So none of the candidates below are about generating the report faster.

---

## Candidates

| id | requirement | basis | rests on |
|---|---|---|---|
| UXI-01 | **Relationship intelligence has a durable home across cycles** — what this client cares about, what was promised last quarter, what is sensitive — so personalisation does not depend on one person's memory. | `[A]` | Row 47 *The 'Nuance' Problem in Automation* and row 58 *Personalisation as the Irreducible Human Task* — you arrive at the same upstream gap twice, independently, in col 4 both times: *"permanently dependent on individual memory. This is a systemic risk and an experience design opportunity."* |
| UXI-02 | The system produces a **draft for a human to edit**, never a finished artifact to send. The operator's role is author-to-editor. | `[A]` | Row 57 *Workflow: AI as First-Draft Generator, Human as Editor* — *"The skill required changes from 'write a good QBR' to 'prompt well and edit critically.'"* Corroborated in direction by rows 37, 40, 51 |
| UXI-03 | The edit step exists to **inject relationship context, not to verify data**. If the operator must re-check figures before sending, the artifact has failed regardless of how fast it was produced. | `[R]` | `broad-asset-queries-return-wrong-results` (observed_behavior / primary) shows verification is currently *necessary* — this requirement is measurably unmet today. Plus row 58: *"The human task is not 'checking the data' — it is 'injecting relationship intelligence.'"* and row 47: *"not about data accuracy"* |
| UXI-04 | When the system cannot reach a source, it **says so** rather than answering from general knowledge. | `[R]` | `assistant-falls-back-silently-when-docs-unreachable` (observed_behavior / primary — the only HIGH-ceiling evidence in the corpus) |
| UXI-05 | Consequential action is **gated and graduated** — read-only, then write-with-approval, then autonomy. No consequential action without human approval. | `[R]` | `autonomy-is-gated-not-refused` (two independent populations, 17 UEM users + 8 advisors; one instrument owner-independent). Row 42 *Agentic AI — Maturity & Trust Barrier* reaches the same place by a different route: *"the bottleneck is not capability, it is accountability"* |
| UXI-06 | The artifact **serves the client's verification agenda as well as the MSP's narrative agenda** — "here is what we paid for, are we getting it?" is answerable without the MSP having to volunteer it. | `[A]` | Row 63 *Client View: QBR as Accountability Mechanism* — your read: the two parties *"may be attending the same meeting with fundamentally different expectations."* This is the sharpest tension in the sheet and nothing in the MSP-facing literature names it |
| UXI-07 | The artifact distinguishes **outcome from output** — risk reduced, not tickets closed. | `[A]` | Row 21 *Output vs. Outcome*, which you name as a failure mode: *"a coaching gap, not just a content gap"* |
| UXI-08 | Content **adapts to who is in the room**. Operational audiences expect incident detail; executive audiences are derailed by it. | `[A]` | Row 16 *Do NOT Discuss Specific Incidents* — the sources flatly contradict each other and your read resolves it: *"the right answer depends on WHO is in the room"* |
| UXI-09 | Every figure in a client-facing artifact is **traceable to its source** without leaving the artifact. | `[A]` | Row 36 *QBR Data Prep as Primary Pain Point* — *"data is scattered, not automated, hard to contextualise"*; reinforced by UXI-03's primary evidence |
| UXI-10 | **CONTESTED — do not write this row until adjudicated.** The coworker is reachable as a standalone, returnable surface with persistent history. | `[R]`, contested | `partners-want-a-standalone-discoverable-surface` (primary) contradicts the headless product direction. Both positions are sourced. Needs an `OPEN.md` `CONTESTED` row with a `handling:` pointer before it can be a requirement |

### Two notes on the set

**UXI-01 is the one I'd fight for.** It is the only candidate that acts on the gap rather
than the symptom, and it follows your own col-4 reasoning rather than the sources' col-3
claims — the sheet's sources all describe the boundary; you are the only one who asks
where the irreducible human input is *stored*. It is also the only candidate that sits
upstream of the meeting, which is where row 40 col 4 says the opportunity is.

**UXI-02 and UXI-03 are one conclusion split at the seam where it fails differently.**
02 is what the system produces; 03 is what the human then has to do. If you merge them,
03's failure mode disappears — and 03 is the one with primary evidence behind it.

---

## Deliberately NOT requirements

Column 4 is gaps, and a gap is `[?]`. These belong in `OPEN.md` as `RESEARCH` rows:

| what | source | why not a requirement |
|---|---|---|
| **Client-side experience** | Row 13 *Client Perspective / Experience*: *"THIS IS THE CORE GAP FOR THE EXPERIENCE MAP. We need primary research… with SMB clients who receive QBRs/EBRs"* — *"The client's experience of being reviewed — what they value, dread, find boring — is an unmapped territory"* | Note the tension with UXI-06: rows 63 and 68 *are* client-perspective material, but Kelser and Exigent are MSP-adjacent vendors writing about clients, not clients. UXI-06 is a hypothesis about the client, sourced to people who are not the client. Worth writing; worth knowing that's what it is |
| **Where relationship intelligence lives today** | Row 47 col 4 and row 58 col 4: *"in the CSM's head, in CRM notes, in email threads?"* | UXI-01 proposes a home for something nobody has observed being kept. Converges with `operator-never-studied` in findings.yaml |
| **N-able's actual prep-time baseline** | Row 36 col 4 and row 56 col 4: *"Without a baseline, the 80% reduction claim cannot be contextualised"* | Exactly right, and the reason no candidate carries a number |
| **Prompting literacy / enablement** | Row 57 col 4: *"Do MSPs have the AI prompting literacy to use this workflow effectively?"* | If the answer is no, UXI-02 describes a workflow the user cannot run. This gap can invalidate a requirement, which makes it worth a dated `OPEN.md` row rather than a footnote |
| **Where upsell belongs** | Row 9 *Upsell / Revenue Opportunity*: *"Several sources warn against making the QBR feel like a sales call"* | Genuinely unresolved in the sources; no basis for a requirement either way |
| **Competitive position** | Row 49 *Dedicated QBR Automation Tools Exist and Are Maturing* — UpdateMate.ai, Arahi.ai, Korl, Taskade | *"no competitive positioning data in this research."* A product question, not a UX requirement |

---

## One thing worth noticing about the sheet

**14 of 68 rows are source-attribution rows**, so every theme cluster names where it came
from. That is what made computing basis tags possible at all — most abductive work in
this corpus doesn't carry provenance, and without it every row here would collapse to
`[A]` with no way to tell the desk-research rows from the ones that converge with primary
evidence.

Side note: `MSP_QBR_EBR_Abductive_Analysis_5813349.xlsx` parses byte-identically. It's a
duplicate, not a variant.

---

## If you accept any of these

They go into §5's Requirements table **appended, never renumbered** — `check-gates.sh`
resolves `UXI-##` against that table, and a renumber silently breaks every criterion
traced to an old id. Once a row is in, `ux.md` can cite it under
`## UX Acceptance Criteria`, and the inheritance check will then require it to appear in
`vision.md` and `design.md` too.

The four ids these rest on are verified present in `acp-core-testrepo/findings.yaml`
(field is `finding_id:`): `broad-asset-queries-return-wrong-results` (line 265),
`assistant-falls-back-silently-when-docs-unreachable` (301),
`autonomy-is-gated-not-refused` (101),
`partners-want-a-standalone-discoverable-surface` (364).
