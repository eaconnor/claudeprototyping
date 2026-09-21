# Sync with Beth Nam — 2026-09-21

**What you want out of the room:** agreement on where the join goes, and her two schema
fields. Not agreement on schemas — there is only one schema and it's hers.

She booked this herself: *"Does Beth C's Evidence Ledger overlap with `findings.yaml` or
serve a different purpose? — To discuss at sync"* + *"no proposals go to Nicole until Beth
C and Beth N have synced."* (ProdUX 62253760665, Aug 04.) The answer is: different purpose,
and I built on top of hers rather than beside it.

---

## The boundary, in one breath

> Her layer asks *is this finding labelled honestly* — at commit, automated, downstream.
> Mine asks *does anything upstream claim more than these findings license*. Same
> `findings.yaml`. Neither works alone: a valid findings file with an overclaiming problem
> statement still ships a lie.

---

## Show her this — 90 seconds

```bash
cd ~/Library/CloudStorage/OneDrive-N-able/Bethproto/acp-core-testrepo && ./check-gates.sh
```

What prints (verified just now):

```
FAIL E-03 — asserts HIGH. partners-want-a-standalone-discoverable-surface is
     STATED_ATTITUDE / primary fidelity, which ceilings at MEDIUM.
     Repetition raises scope, not confidence.
```

**That is her ceiling arithmetic, running on her schema fields, failing a build.** Then
open `findings.yaml` and show her `confidence:` is blank on all 13 rows with `# ← yours`
against each — the script computes the ceiling and will not set the grade.

If there's time: `./check-blocked.sh` ends with *"5 row(s) above have no named owner"* and
refuses to accept a placeholder as a person.

---

## Three questions — in the order that matters

1. **What's the stable address of a finding?** A path in acp-core, a finding ID, or a
   Confluence URL? The UX toolkit drops into other repos, so this decides whether the join
   is a path or a link. Everything else waits on this one.
2. **`contradicts` and `superseded_by`** — both on her requested-changes list. Any sense of
   when? Two things here are blocked on exactly those fields.
3. **Keyword IDs.** She's right that numbered IDs collide once a second area exists; the
   findings file already uses keyword form. Does she want the UX side aligned, or the two
   sides deliberately separate?

Only if the room goes that way: is PR #34 merged and current, and what does she need to get
from "piloting" to "adopted"?

---

## The boundary test — one defect her layer won't catch

Idea Chess Fleet Package: the two portfolio-gating questions — can we legally pull
competitors' data, and does the operator want the mechanism — gate four of five offerings.
Both Owner cells read **"None."** Compliance owner reads `<TBD>` on three pages, against an
EU AI Act date of 2026-08-02 printed on the same pages.

Not an evidence-labelling problem, so her gates have no reason to fire. **That's where the
line is**, and it's a better way to find it than arguing about schemas.

She *does* catch the other two: the survey's 119-vs-39 headline (her per-instrument `n`
finding, which she reached independently) and "#1 across all 3 instruments" when Env Health
scores 3.59 to QBR's 3.40 (her rule 9, nothing cited beyond its scope).

---

## Do not walk in proposing

- A confidence scale or evidence field names. Hers is canonical, with governance and a
  change log.
- Anything to Nicole. Her page records the agreement.

## Two things worth saying out loud

- This morning the plan was a second evidence schema. Hers made that unnecessary and worse.
  Nearly shipping it is the argument for this sync existing.
- Nobody has ever commented on her taxonomy or her gate proposal — her governance section
  invites it and the invitation has gone unanswered. Same is true of the Idea Chess pages.
  Two rigorous frameworks, neither reviewed by anyone else. Neither of you can fix that
  alone.

---

<details>
<summary>Longer background, if the meeting runs over</summary>

**Four independent convergences.** `CONTESTED` as a fourth open-row type ≈ her rule 7 plus
her requested `contradicts`. Dropped candidates needing a forwarding address ≈ her
`superseded_by`. My "distance from raw" ≈ her `claim_type` ceiling, done properly. The
n=119/n=39 conflation ≈ her per-instrument `n`.

**Not wired, say so if asked:** her `validate_findings.py` doesn't run in this repo, G14–G18
aren't implemented, acp-core PR #34 is untouched and stays that way. The 13 findings are
mine, written in her schema as a conformance test of it — so the real ask is whether her
schema survived contact. The two gaps are `contradicts` and `superseded_by`.

**Her open question nobody has answered:** her stress test found participant emails embedded
in a shareable link, and those emails resolve to account revenue. If documents start citing
sources by pointer, what may be copied into a repo versus only linked?

**Also true:** all 88 of her Confluence items are in ProdUX, none in ADL or PUT. "Intent
confidence" is not her name for any of this — it's the title of Will Mincher's 14 July Brain
Dump post announcing her work. Her names are "Evidence Gate" and "Research Evidence Layer".
G19/G20 are cited in her Format Stress Test and defined nowhere; the published set stops at
G18. Her 27 August repeatability check found counts and confidence values moving between
runs with six findings silently dropped — which is why she says the index can't be hand
maintained.

</details>
