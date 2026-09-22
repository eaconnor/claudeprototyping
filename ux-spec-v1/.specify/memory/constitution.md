# Constitution — ‹project name› (skinny v1)

## The gates

- **Gate 1 — do we understand the problem?** Checked against `ux.md`.
- **Gate 2 — is this the right thing to build?** Checked against `ux.md`, the same file.
- **Gate 3 — is this one built right?** Checked against `design.md`. Optional — but a
  project with no Gate 3 has to *say* so by setting `GATE_3=""`. Silence is what is
  disallowed.

## What a red gate is, exactly

An unticked acceptance-criteria box is **not** a blocker. Early work has unticked boxes;
a gate that fires on incompleteness only teaches people to tick boxes. What blocks:

- a `confidence_regime:` of `BLOCKED` — the file naming a decision a human owes,
- **no** `confidence_regime:` at all — silence about how finished the work is,
- a claim asserted **above the confidence its evidence licenses**, or
- a `stance: disputes` with nowhere it is being handled.

The question is not *is this finished.* It is *is this honest about not being finished.*

## The one rule about evidence

How strong a claim you may make is set by how the evidence was gathered, not by how sure
anyone feels. Watched people do it → HIGH. Asked them → MEDIUM. Worked it out ourselves →
MEDIUM. Somebody recommended it → LOW. Then: if the people studied were not the actual
users, everything drops to LOW. Lowest cap wins.

More of the same evidence widens *who* a claim covers. It does not raise confidence.

**Only the person named in `RESEARCH_OWNER` sets a confidence grade.** No script fills one
in, and agents must not either — that is policy here, not something enforced. What is
enforced: no script writes to `findings.yaml`, and `check-gates.sh` fails any document
claiming more than a finding licenses.
