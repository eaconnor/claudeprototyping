# Prework — JTBD: the fleet-view surface (workstream E)

**Status:** `[A]` generated hypothesis from existing repo sources, not primary research — same discipline as the Value Ledger council pass. Method reused from `briefs/003-value-ledger-council-testimony-2026-08-03.md`. Every claim traces to a line in `nav-redesign-intake-2026-09-03.md` or `003-value-ledger-council-testimony-2026-08-03.md`. Gate 1 unmet — this is a hypothesis to test, not a finding. Produced 2026-09-04.

## Functional job
Know the fleet is doing its job **without opening each coworker one at a time.** `[CS: HIGH — sourced]` Dunlop's "needs an all-coworkers status view" (intake :172) and Beth's whiteboard check-in — *"what are they doing / how well / what's scary"* (:148) — are the same job as a screen and as questions. The whiteboard ordering is load-bearing: **activity → quality → risk**, feeding an improvement loop. Sidhant's build-status-bar ("how good, if they are done," :173) points at the per-coworker granularity under the roll-up — but it's `[CS: UNKNOWN]`, not locatable in-repo, so the *shape* of the "how well" indicator isn't designable to spec yet.

## Emotional job
**Not getting blindsided.** `[CS: HIGH — sourced]` The whiteboard's *"★ what's scary"* (:148) is the anxiety raw; Beth widened its scope (:201) — scary isn't only a bad output, it's *"could the fleet take unauthorized, cascading actions without a human noticing for days"* (Hugging Face swarm, `[CS: HIGH]`). Same anxiety as the Value Ledger's credibility problem: *am I about to be embarrassed in front of a client because a bot did something I didn't catch.* "Transparency = winning" (:154) is the named answer; maps to North Star's "gated autonomy by default" / "show its work" MUSTs + the sign-off/activation gates already in `ebr-app.html`. The job is **pre-empt the ambush**, not "report status."

## Social job
**Show someone else the fleet is under control** — a boss, a client, Dunlop-in-a-review. `[CS: HIGH — sourced]` The Value Ledger's User Story 3 job (a defensible client-facing number) generalized from one QBR number to the whole fleet. Asymmetry the `003` council already caught (:15): "under control" for a *client* vs. for *N-able's own management* are two audiences bundled into one surface — unexamined two-customer conflation, resurfacing.

## What gets fired
**Manually checking each coworker's tab one at a time** (:243). `[CS: HIGH]` (Don't double-count the homegrown-spreadsheet reassurance — that's more precisely the Value Ledger's fired job.)

## Unresolved scope ambiguity — name, don't resolve (Beth's call)
**"The whole fleet" = all coworkers across all clients (MSP-wide) OR all coworkers within one client (per-tenant)?** `[CS: VERIFIED — intake's own open item, :244]` Two different surfaces, not one with a filter. Same ambiguity as D's org-axis question from a different angle; the intake's order (:254) already flags D-Q1 and this E-scope question as *one decision, not two.* Beth abducts.

## Persona weighting (existing four only)
| Persona | Job that pulls hardest | Why |
|---|---|---|
| **Priya** (Bracken, relationship lead) | Social + functional | ":211 — a status view she can speak to without digging." The fleet view *is* her instrument. |
| **Deepa** (Voss, MSSP) | Emotional ("what's scary") | :203/:213 — rogue-fleet risk is compliance evidence. Weight her most on risk-surfacing. |
| **Tom** (Redgate, burned skeptic) | Emotional, skeptical | :214 "prove it, don't just report it." A view that asserts control without showing its work fails him. |
| **Marcus** (Holloway, owner-operator) | Functional (quality) | :212 — cares about quality/fixing himself; drills roll-up → per-coworker "how good/done" bar. |

## Two caveats carried, not smoothed
- `[WOBBLY]` the "how well" indicator rests on Sidhant's build-status-bar (`[CS: UNKNOWN]`, not in-repo) — can't design to spec until a screenshot arrives.
- **Overlap risk (:101):** fleet-view "usage" and the Value Ledger's "by coworker" breakdown duplicate if built independently. Decide which owns usage-over-time first.
