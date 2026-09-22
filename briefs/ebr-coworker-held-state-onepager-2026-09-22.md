# Where does a held item live?

**EBR Coworker (Technica) — one question for engineering**
Elizabeth Connor · 2026-09-22

---

## The ask

When Ingest hits a source that's down, where does that finding live until someone deals with it?

Not "how do we show it." Where does it live. What is it called in the code, what puts it there, and what takes it out.

---

## Why this isn't a v2 question

On Technica's first real cycle, four things went wrong at once:

- **0 of 7 sources were reachable** (2026-08-27, from the register's own cycle log)
- **The M365 connector loaded the wrong tenant** — the only server with a live credential was the operator's own, not Technica's
- **The sign-off owner contradicts itself inside our own files** — the register names Vanessa; the judgment log still has it open as "David or Vanessa?"
- **Incidents have no source at all.** RocketCyber is in Technica's own template under Current Climate → Dashboards, but nothing watches for incidents. If one happens this quarter, no part records it, and it reaches the EBR only if the technician remembers.

That's four exceptions on cycle one, before any scale. For this workload that's the normal case, not the tail.

And the report can't just proceed without them, because three rules we've already committed to say it can't:

1. Nothing client-facing goes out without a named human sign-off.
2. Unverified is hard-blocked from the client-facing artifact, regardless of sign-off.
3. Absence of data is itself a finding — never silently marked green.

A pipeline with no place to park a finding can honour those three against clean demo data only. Against Technica's actual data it has to either stop or lie.

---

## The part that's already done — and the part that isn't

This is the bit worth being precise about, because it changes the ask.

**The states already exist on paper.** They're specified, not missing:

- `specs/_ux/qbr-ebr.ux.md` defines five defensibility tiers — Measured, Benchmarked, Estimated, Unverified, **Source-Unavailable**. `Source-Unavailable` is defined as *"a source doc was expected (e.g., a connected platform is offline or the connector returned no data)"* — explicitly distinct from Unverified, and both hard-blocked from client output. That is the down-source state, already named.
- The experience map has **Sign-off Gate as its own stage**, between "reviews and chooses" and "deliver to client." Not an annotation on a step — a step.
- The map breaks the runbook's 8 steps into 8 jobs, and two of them are exactly this: a **sign-off/guardrail agent** and an **append-only liability-log agent**.

**And the same documents say they aren't built.** In their own words:

- The map, on the sign-off gate: *"designed, not yet a working control."*
- The map, on the guardrail agent: *"today it's a rule on paper, not a running check."*
- The map, on the sign-off screen: *"a sign-off button inside the console — the exact screen for it doesn't exist yet."*
- The spec, correcting itself on 2026-07-31 after a full-repo grep: the tier vocabulary returns **zero hits in code**. What exists is `baseline_source` with three values — `tenant_configured`, `platform_default`, `coworker_reported`. None of them means "held."

So this isn't a design gap. It's a design-to-build gap, and the build is missing the half that the three rules above depend on.

---

## The same point in engineering terms

A part moving through this system has a lifecycle: `Raw → Reconciled → Cleared`, plus two terminal states — `Short` (no source exists) and `Source-Unavailable` (a source was expected and didn't answer). `Cleared` isn't a timestamp; it means a human decision is attached to that part and still holds.

So the shape needed is a **state machine per finding**, where:

- every finding carries its own state, independent of the run
- `Source-Unavailable` and `Unverified` are blocking states — the render can't include them, and the run doesn't fail either
- the render is **gated on a recorded sign-off**, not on the pipeline reaching the end
- the sign-off write is what transitions a finding out of held, and it's append-only
- a held finding survives the cycle — it comes back next quarter still held, rather than resurfacing as a surprise

What's there today is a linear pipeline: eight steps, one direction, no per-finding state, no queue, no blocking condition that isn't a failure.

Adding those states later isn't appending a step. It's changing what a finding *is* — every stage has to learn to read and write a state it currently doesn't know about, and the render has to learn to refuse. That's the same reason "we'll add error handling later" never costs what it looks like it costs.

---

## What I need to know

1. In the current build, does a finding have a state of its own — or only the run?
2. What happens today when Ingest gets nothing back from a connector? Name the code path.
3. Is anything gating the client-facing render on a recorded sign-off, or is the render the last pipeline step?

If the answers are "no / it's not handled / the render is the last step," then the three rules aren't enforced today, and the first real Technica cycle is where we find out.

---

*Evidence: `briefs/scout/figma-qbr-ebr-experience-map-2026-09-22.md` (the pulled experience map, with a coverage ledger of what was and wasn't read) · `acp-core-main-3/specs/_ux/qbr-ebr.ux.md` (the 8 Musts, the defensibility tiers, the 2026-07-31 grep correction) · `ebr-coworker.runbook.technica.md` (cycle log, sign-off contradiction) · `harness-laura-salesdemo.html` (the 5-step build stepper, line 998; the 8-step run cycle, line 2792).*

*Not established, and I'm not claiming it: whether engineering already has this logged internally as a known gap. Nobody has checked Jira or Confluence for it.*
