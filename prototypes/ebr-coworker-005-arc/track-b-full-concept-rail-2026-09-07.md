# Bradley rail — Vertesia-backend-friendly mod, run across the real harness

**Artifact:** [harness-vertesia-mod-2026-09-07.html](harness-vertesia-mod-2026-09-07.html) — the real harness (`harness-2026-09-04.html`), untouched, with 8 additive badge insertions layered onto its actual live screens (register, sign-off, Chooser, trend, client report). Nothing removed, nothing rewired — verified in-browser, no console errors, original file byte-for-byte preserved separately.

Superseded by this: `track-b-full-concept-2026-09-07.html` (the standalone 5-card sketch built one step before Beth clarified "the whole thing" meant the real harness, not a new mock). Keep both — the standalone version is a faster read; the harness-mod version is the real proof.

## Readiness — Tier 2 · Direction

Real architecture direction, not yet spec-ready. The query/mutate half is live-tested (Track B). The `human_task`/`answer-task`, `/rendering/jobs`, and `/prompts/{id}/render` badges are schema-confirmed from Vertesia's OpenAPI spec this session — none of the three has been called against a live run yet. Treat every "Native" badge on Sign-off and Chooser as a strong hypothesis, not a proven fact.

## What this is testing

Whether the harness's real screens — not a redesign, the actual `overview()`, `regTable()`, `chooserBody()`, `renderReport()` functions already in production — can sit on Vertesia's real API surface without breaking anything a persona already relies on, and whether the parts that can't are few enough and specific enough to be worth building instead of a dealbreaker.

## What you nailed

- Reused the actual live-tested Track B pattern (this app's own cards, Vertesia's data underneath) across five real screens in one pass, not a fresh demo — same functions, same FINDINGS data, additive only.
- Non-destructive by construction: the mod is a separate file; the original harness is provably untouched; every insertion was verified rendering in the real, activated app state (not a static screenshot).
- Made the coverage gap visible *in the UI itself* — this answers Tom's "prove it, don't report it" and Deepa's compliance-evidence need with the same device, not two separate arguments.

## What will hurt you

- Three of the five "Native" badges (`human_task`/`answer-task`, rendering jobs, prompts-render) rest on OpenAPI schema reading, not a live call. If any behaves differently than documented, it lands on the highest-stakes screen — sign-off before client send.
- The evidence/attachment gap isn't one grayscale box, it's the same gap appearing three times (register review, sign-off, Chooser). Building three slightly different patches instead of one shared component is a real risk if each team builds it independently.
- Grayscale-as-design-language is fine for an internal concept pass. It will not survive contact with a real client-facing screen — decide now whether "not covered yet" ships hidden, or ships visible-but-disabled, in production. Not decided here.

## What we'd need to make this happen — routed

*(Scope note: marketing/content pages assumed fine to produce on demand — not listed as a need below.)*

**Product**
- Product does: decide whether "the whole fleet" (Task 1's roll-up) means MSP-wide or per-tenant — named as unresolved in `prework-jtbd-fleet-view-2026-09-04.md:18`, not an engineering question.
- Why now: [R] the same ambiguity already stalled the fleet-view JTBD work once this month.
- If you ship without it: Eng builds the wrong aggregation shape and it gets rebuilt once the decision lands anyway.
- **ROI** — Business: avoids a rebuild cycle. User: one consistent meaning of "the fleet" across every screen that references it. Unknown: which scope Beth's actual buyers expect — not asked yet.

**Design**
- Design does: design one evidence/attachment component (screenshot, log excerpt, annotated diff) once, reused in Register review, Sign-off, and Chooser — the three places that independently hit the same Task-field limitation.
- Why now: [D] confirmed this session — Vertesia's `HumanTaskDefinition` fields are plain string/select/number only, in three places, not one.
- If you ship without it: three teams likely build three slightly different versions of the same missing piece.
- **ROI** — Business: one component instead of three. User: a consistent "prove it" experience wherever a finding needs evidence. Unknown: whether Priya and Deepa actually want the same density of evidence in all three places — untested.

**Research**
- Research does: live-test whether `human_task`/`answer-task` actually pause and resume a real Vertesia Process run the way the OpenAPI schema describes.
- Why now: [D] every "Native" badge on the Sign-off and Chooser cards currently rests on this one untested assumption.
- If you ship without it: the highest-stakes screen in this whole concept — sign-off before client send — ships on an unverified mechanism.
- **ROI** — Business: avoids shipping the Approvals story on a guess. User: Deepa's compliance-evidence trust depends on this working as documented. Unknown: whether a paused run can be resumed by someone other than the original assignee — not in the schema, not tested.

**Eng — RESOLVED 2026-09-07, engineering-feasibility pass**
- Answered: yes, coverable. `/files/upload-url` returns a stable `{url, id, path}`; nothing stops storing that string in a Data Store text column via `mutate` and rendering it as a link/image. Two calls, not one specialized endpoint — real per the OpenAPI schema, not yet built or live-tested.
- Also resolved in the same pass: the "no version-history endpoint" gap badge was **wrong**, not just unconfirmed — `GET /data/{storeId}/versions` lists every version (every `mutate` auto-creates one per the schema's own description), and `/versions/{id}/query` reads historical state directly. Flipped to Native in the harness mod.
- Still open, and now the sharpest remaining Eng question: a critic pass on this rail's own claims found that `human_task`/`answer-task` is a real 3-call sequence (`GET /tasks?assignee=&status=` → `PUT /tasks/{taskId}` → `POST /agents/{runId}/answer-task`) with a documented footgun — the spec explicitly warns not to call `/tasks/{taskId}/complete` for a `human_task` node. That sequence is schema-verified now, but still not live-fired against a real paused run.
- **ROI** — Business: removed the largest custom-build item from the list entirely (evidence attachment) and corrected a wrong gap claim (audit trail) before either shipped as settled fact. User: same experience either way once built. Unknown: whether the 3-call sign-off sequence behaves as documented under a real paused run — the one thing left to actually fire.

## Personas checked against (unchanged from the concept pass)

Priya (status without digging, prove to client), Marcus (quality, fixing it himself, doesn't want blocked), Deepa (what's scary / compliance evidence), Tom (burned skeptic, prove don't report) — `nav-redesign-intake-2026-09-03.md:209-214`. Nothing in this mod asks any of the four to tolerate something new; each badge names a constraint Vertesia already imposes, not one this mod invents.
