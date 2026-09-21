# gate-wiring.md — the two blocks Step 12 checks for, verbatim

Step 12 of `ux-kickoff` checks whether a project's Spec Kit constitution and its
Intent Spec actually reference the UX gate files. If they don't, the gates are
enforced by a script nobody is told to run — which is the failure this whole
toolkit exists to prevent.

**Both blocks below are pure mechanics.** They are identical in every project:
no names, no owners, no requirements, no judgment. That is why this skill is
allowed to write them, and it is the only content in this skill that it may
generate rather than transcribe. Everything in the two rules below still holds:
never fill a judgment slot, and never write §0-§20 content.

Renumber `VII` to whatever the next unused Roman numeral is in the target
constitution. Read that file's own `## Governance` section first — if it
specifies an amendment procedure (approval, version bump, Sync Impact Report),
follow it. If it requires sign-off this skill does not have, stop at proposing
the text and say so.

---

## Block A — for `.specify/memory/constitution.md`

Insert before the first `## ` section that follows the Core Principles (usually
`## Technology & Infrastructure Constraints`). Bump the version — adding a
principle is a MINOR bump under most constitutions' own rules — and add a
Rationale line to the Sync Impact Report at the top.

```markdown
### VII. Evidence-Wired UX Gates (NON-NEGOTIABLE)

Product work is gated on understanding the problem, not only on passing tests.
Three files carry that: `ux.md` (the problem and what we know), `vision.md` (the
concepts), `design.md` (the build). `findings.yaml` carries the evidence and is
owned by research. The following MUST hold, and each is mechanically enforced —
a principle nothing checks is decoration.

- **`ux.md` MUST exist.** This is the one requirement with no way around it; no
  confidence regime declares past it and no flag softens it. `vision.md` and
  `design.md` MAY be absent when `GATE_2`/`GATE_3` are empty in `project.conf`
  — an empty value is a recorded decision, a named file that does not exist is a
  broken pointer and fails. *(`check-gates.sh`, hard stop before any other check.)*
- **Every gate file MUST declare `confidence_regime` and, for any `PROCEED*`
  value, `proceed_because`.** Unticked criteria are permitted and normal —
  unfinished work belongs in the repo where it is visible. What is NOT permitted
  is silence about being unfinished: an undeclared file reads as finished to a
  human and as authoritative to an agent. *(`check-gates.sh`.)*
- **`owner:` and `research_check:` are separate fields and both MUST be present.**
  Who wrote a gate file and who checked its evidence are different jobs, and
  either may be held by any discipline — including one person holding both, which
  is legal and must then be stated so the absence of an independent check is on
  the record. A missing field fails; `UNASSIGNED` flags. *(`check-gates.sh`.)*
- **`UXI-##` is the single id space for UX requirements, and §5 of the document
  named by `INTENT_SPEC` is its canonical home.** Add rows at the END and never
  renumber — renumbering silently breaks every criterion traced to that id.
  *(`check-gates.sh` resolves each id against §5; `check-trace.sh` resolves
  `traces_to:` there in the full tier.)*
- **UX acceptance criteria inherit forward and MUST NOT be dropped**, `ux.md` →
  `vision.md` → `design.md`. Each gate MAY add its own. Carrying a criterion
  forward unticked is always acceptable; removing one deletes a user need from
  the chain without anyone deciding to. *(`check-gates.sh`.)*
- **A claim MUST NOT be asserted above the confidence its evidence licenses.**
  `claim_type` and `population_fidelity` set a ceiling arithmetically; the grade
  inside that ceiling is research's judgment. Agents MUST NOT write, grade, or
  override a finding. *(`check-gates.sh` evidence-dialogue check.)*
- **An absence MUST NOT be asserted without searching the corpus named in
  `findings.yaml`.** "No research exists," "nobody has studied this," and
  "there is no evidence for X" are claims requiring corpus-wide search, not a
  scoped read. Disagreeing with a finding is legitimate — record it as
  `stance: disputes` with a `handling:` pointer to where it is being worked out.
  *(`check-gates.sh`; `check-blocked.sh` for the `CONTESTED` row.)*

**Rationale**: On 2026-09-21 seven independent agents each derived this
project's user personas from the `Role` enum in `app/identity.py`, because no
file said where the customer research lived. Every answer was fluent and every
answer was invented. The synthesis above them then reported "this project has no
user research" — false; interviews, a survey and a living research page existed
and were unreachable from the repo. Nobody was careless. Evidence that is
available but not *wired* produces a confident guess instead of a stop, and that
failure mode gets worse as more of the work is done by agents. Principle V keeps
the code honest. This one keeps the claims honest.
```

---

## Block B — for the document named by `INTENT_SPEC`

Insert in the UX intent section (`## 5. UX intent — ` + "`UXI-##`" + "), immediately after
the `check-trace.sh` note and before `### Experience principles`.

Adjust the file names in the table if the project's `project.conf` uses different
`GATE_1`/`GATE_2`/`GATE_3` values. Do not add `UXI-##` rows.

```markdown
#### Where the UX work lives — the link is two-way, and nothing is copied across

This section is the canonical home for `UXI-##`. The gate files below hold the
reasoning, the evidence and the concepts; **they point here for requirement ids, and
this section points at them.** Both sides are filled in and no field is duplicated —
a copied field goes stale silently and nobody can tell which side is current.

| What | Where | Holds |
|---|---|---|
| The problem, and what we know | `ux.md` | Problem statement, cast, evidence log, eval loops. Authors the UX acceptance criteria that cite the `UXI-##` rows below. |
| The concepts | `vision.md` | Vision prototypes, service blueprints, experience maps. **Several concepts at once is expected**, labelled and comparable — the bet itself lives at §1/§2/§4 of this document, not there. |
| The build | `design.md` | Every UX criterion carried forward from `ux.md`, plus design-system conformance, accessibility, lawful basis, security. |
| The evidence | `findings.yaml` | Owned by research. Each finding carries `claim_type`, `population_fidelity` and a confidence grade. **A `UXI-##` row's `basis:` tag must not exceed what the finding it rests on licenses.** |
| What is unresolved | `OPEN.md` | Typed by who can unblock it: a decision, a research gap, a contested pair of sources, or an accepted weakness. |

Enforced by **Principle VII** of `.specify/memory/constitution.md` (v1.2.0), which
`check-gates.sh` implements: `ux.md` must exist, criteria inherit forward and are never
dropped, `UXI-##` ids must resolve to the Requirements table below, and no claim may be
asserted above the confidence its evidence supports.

**Before writing a row below, read `findings.yaml`.** An id looks identical whether it
came from research or from a guess at kickoff — see the note under Requirements. And do
not record that something is unstudied without searching the corpus `findings.yaml`
names; a scoped read is not an absence.
```

---

## What Step 12 must NOT do

- Create a constitution in a project that has no Spec Kit. A missing
  `.specify/memory/constitution.md` means this is not a Spec Kit project, which
  is a different situation — the rules need another home (the project's own
  agent-instructions file), and that is a decision for the room, not a default.
- Add `UXI-##` rows, an `owner:`, a `research_check:`, or any §0-§20 content.
- Amend a constitution whose Governance section requires an approval this skill
  cannot obtain. Propose and stop.
