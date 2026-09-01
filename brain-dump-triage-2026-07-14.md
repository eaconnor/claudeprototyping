# Brain Dump → datadump · first triage pass

**Source:** Teams channel "Brain Dump" (`19:OlTtVVyAz8w…@thread.tacv2`)
**Pulled:** 2026-07-14 · **Coverage:** recent slice (~last 48h), NOT full backfill yet [CS: HIGH]
**Rule:** a post is `[?]`/`[A]` until sorted + sourced. Provenance = author · time · permalink.

---

## → Market shelf (positioning / product-runbook requirement)

**Runbooks must be vendor-agnostic** `[A]`
> "make sure the runbook for that coworker is *not* vendor specific… mix and choose" — Chris Barber, 07-13 13:07
> "keep ACP agnostic of Azure/ID services — choose the service per step, like you choose an MCP instance" — William Mincher, 07-13 13:04
Route: market (differentiation stance) + a **runbook requirement** (agnosticism as a build constraint).
[permalinks: barber/1783948032826 · mincher/1783947881955]

---

## → Spec gap (permissions — feeds the MCP / coworker-config spec)

**Permissions model is unresolved** `[?]`
> "CRUD on all things, or granular — 'edit a runbook but can't add an MCP'? Where is it configured — a screen, or coworker config?" — Jude Scally, 07-13 15:37
> "Platform admin: add MCPs, create coworkers, publish scripts. Technician: run which coworkers, at what autonomy." — Elizabeth Connor, 07-13 15:40
> "keep it simple to begin with" — David Woakes, 07-13 18:53
Route: Gate-2 open question on the permissions/MCP spec. **Riskiest-assumption candidate.**
[permalinks: scally/1783957027055 · connor/1783957217176 · woakes/1783968803918]

---

## → Value-prop touch (Gate 3 test infra)

**Day-1 premade coworkers need representative test accounts** `[A]`
> "premade Coworkers day 1 like QBR or onboarding… need representative accounts on whatever platforms the coworker runs on to verify it works" — Chris Barber, 07-13 12:54
Route: touches value-prop work (QBR/onboarding as lead coworkers) + a **Gate-3 execution need** (test-account infra).
[permalink: barber/1783947273665]

---

## → _inbox / align (do not classify yet)

**Parallel effort — Beth Nam's intent-confidence tagging** `[?]`
> "Beth Nam is working on a way to tag, score, and pull in findings from sources to support the Intent documents. Hello Brain Dumplings!" — William Mincher, 07-13 13:12
Route: overlaps your model. Align/merge call (you + Meaghan), not a shelf entry.
[permalink: mincher/1783948321858]

---

## → Captured action (someone asked for it)

**"Pull permissions mentions from the intent specs"** — David Woakes requested exactly this
(07-13 18:53). I can run it against `acp-core-main-3/Intent Specs/` on your say-so.

---

*Recent slice only. Full channel backfill (date-bounded sweep) still pending.*
