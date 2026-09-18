# INTENT-SPEC.template.md — retired 2026-09-18

**Do not use this file as a template.** It briefly held a duplicate intent-spec
format, invented from the DATADUMP template's house style without checking whether a
real one already existed. One did — richer, production-tested, and already the org
standard.

## Use this instead

```
briefs/handoffs/what's up with the humans in ACP?/nicole-acp-datadump/Intent_Spec_Example.md
```

Confirmed as the real standard, not one team's habit: two independent production
documents that were **not** built from it — `acp-core-main-3/Intent Specs/
FSN-83143_AI_Coworkers_in_ACP.md` and `test-repo-doodle-journal/Intent Specs/
doodle-journal.md` — match its section numbering exactly, `§5 = UX intent` included,
which is also why that number matches `check-trace.sh`'s `UXI-##` convention below.

It has 20 sections; the two production instances above only reach §15, because they
predate Sections 16–20 (Release/rollout, Verification summary, Post-delivery
learning, Change log) being added. Newer specs should use all 20.

## What `check-trace.sh` expects of it

```
§N              a section of the canonical intent spec (this document)
UXI-##          a requirement in intent spec §5 — "UX intent"
ds:N / ds:N.N   a section of the LOCAL gate file (ux.md/design.md), never this one
```

## What this toolkit adds on top, and where

Three pieces this repo's gate scripts need that the base template doesn't carry —
evidence-basis declaration, a change-request channel, and scoped signatures — are
documented as an **opt-in addendum inside `Intent_Spec_Example.md` itself**
(`## Addendum — for teams running mechanical gate enforcement`), not duplicated here.
Most consumers of the real template don't run `check-trace.sh` / `check-condens.sh` /
`check-judgment.sh` and should never see toolkit-specific fields in their frontmatter.

## Why this file still exists rather than being deleted

Neither `OPEN.md` nor `RITUALS.md` named this gap before today — checked, not
assumed, after nearly shipping that exact false claim in this file. `OPEN.md` A-06 now
does: "no template existed for the canonical document the whole toolkit points at,"
found in the doodle-journal cognitive walkthrough, 2026-09-18. Deleting this file
outright would have left that finding with no home but a chat transcript. This stub is
the cheaper alternative to a bare register row — it also does the redirect's job.
