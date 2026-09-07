---
title: EBR Coworker — preliminary plan, two concept/test builds against Vertesia
type: preliminary UX plan (pre-pipeline — scopes the test, does not build it)
generated: 2026-09-07
sources:
  - briefs/ebr-vertesia-ux-mapping-2026-09-07.md (screen-to-primitive map, this session)
  - Live observation: Vertesia Studio Assistant approval-gate incident, this session
  - Live observation: Task Inbox (/store/tasks), this session
---

# The question this plan is actually testing

Not "which option is better" in the abstract — **can a human read one real Technica finding and know
what they're approving**, tested against each surface's *default* layer (Track A) vs. a layer ACP builds
on top of the raw API (Track B). The Studio Assistant incident already showed the default layer fails
this. One data point isn't proof for the whole product — Task Inbox is a different screen than the one
that failed, untested.

Test article for both tracks: **the same single finding** — USER6, no MFA, bypasses both the
legacy-auth-block and MFA-enforcement conditional access policies (the highest-severity row in this
session's real risk-register.md). One finding, pushed through both surfaces, so the comparison is
apples-to-apples.

---

## Track A — Vertesia's own product, as-is (no custom UI)

**1) Is "AI Studio" even an option? — Refined answer: partially, and not the piece you were just in.**

- **Studio** (the Interaction/Prompt editor you were just using) is a **builder** tool — for defining
  Interactions, not for running them as a practitioner. Confirmed not the right surface: it's dev-facing,
  it's where the Assistant's approval-gate failure happened, and it's inside N-able's own MSP project, not
  anything Technica-facing.
- **Task Inbox** (`/store/tasks`) is a different, genuinely promising screen — checked live this session.
  Real tasks in there right now render as: task title in plain language ("Review and Send Customer
  Notification"), a linked Agent Run, a status, an assignee, and a **form** (e.g., "Notification Content
  (edit as needed before sending)", "Customer Notified? (yes/no)", Submit). This is structurally closer to
  a Chooser than the Assistant's tool-call approval was — it's task-shaped, not mechanism-shaped.
  `[CS: VERIFIED — direct observation]`
- Untested, `[?]`: whether a Task rendered from *our* Interaction would carry Stefanie's-formula content
  (data → risk → what it means → consequence) or just the raw field names from the Result Schema
  (`risk_register_content`, `sign_off_required`) — which would just move the same translation gap from the
  Assistant's chat window into a form field instead.

**Test build scope (Track A):**
1. Run the existing "EBR Coworker — Technica" Interaction (already in Studio) for just the USER6 finding —
   smallest possible input, not the full 41-row cycle.
2. Watch what lands in Task Inbox. Read the resulting Task exactly as a practitioner would — no priming.
3. Verdict criterion: can you tell, from the Task screen alone, what USER6's exposure is and what
   approving/declining actually does — without opening the Agent Run detail or asking me.

**What this can't test, regardless of result:** the setup wizard, per-client branding, dashboard-across-
clients, and confidence-tier/evidence-trace display — the mapping brief already confirmed Vertesia has no
native concept for any of these. A good Track A result only closes the Chooser question, not the whole UI.

**Cost:** near-zero. Everything needed already exists (the Interaction is built, Task Inbox is live). This
is configuration and observation, not a build.

---

## Track B — standalone UI, calling the API directly

**Test build scope:**
1. One static screen (reuse Apex/Bauhaus tokens already in `harness-2026-09-04.html` — don't restyle from
   scratch).
2. One real call: `POST /agents` against the EBR Interaction, scoped to the USER6 finding only.
3. Render **one Chooser card**, hand-composed around Vertesia's raw run output, carrying the full
   translation (data → risk → what it means → consequence) plus confidence tier + evidence trace as
   first-class fields — the two things Track A structurally cannot show natively.
4. Verdict criterion: does putting ACP's own translation layer in front of the same underlying Agent Run
   fix what the Assistant incident broke.

**Prerequisites not yet done:** an API key (Settings → API Keys is empty — none provisioned), and a
decision on which key role to use for a test (`developer` is the right one for this, not `application` or
`automation`).

**Cost:** a few hours to a day for one working card against one real finding — this is a vertical slice,
not the stepper, not multi-client, not auth hardening.

---

## Recommended order

**Track A first.** It's nearly free, it uses what already exists, and it directly answers the open
Chooser-mechanism question (`Tasks` vs. `tool_approval_mode` vs. whatever the Assistant used) with a real
Task Inbox result instead of more spec-reading. Track B is worth doing regardless of Track A's result —
even if Task Inbox turns out fine for this one finding, the setup wizard, branding, and confidence-tier
display still need a custom layer no matter what — but Track A's result changes *how much* of Track B is
about the Chooser specifically vs. everything else.

## What triggers the full build pipeline (scout → spec → critic → build → critic → handoff)

Running Track A is configuration inside a tool you're already in — no pipeline needed, just do it and
report what the Task looked like. Track B is a working screen — per CLAUDE.md §9b, that's a prototype
request and pulls in the full pipeline (a `.brief.md`, a pre-build critic pass, the build, a post-build
critic pass, Bradley rail) once you say go on it specifically.
