# Refresh the Datadump — weekly ritual

**Who runs it:** anyone on the team. No special knowledge needed.
**When:** every Monday **OR** any time you see a `drift: STALE` flag on a spec.
**How long:** ~10 min, most of it automated. Your only real job is Step 5 (approve).

---

## Run it

Trigger the **`refresh-datadump`** skill (or ask Claude: *"run the datadump refresh"*).
Everything below happens for you; you only act at Step 5.

```
1. GATHER    pulls everything new since last run —
             the Brain Dump channel + any new sources
2. CATALOG   sorts each item onto a shelf (user / market / _inbox),
             logs it in the manifest with who-said-it + when + link
3. RELATE    scout checks each new item: does it touch an existing spec
             or finding? Flags the specs it affects
4. QUESTIONS builds a short review list:
               • new findings to accept
               • what they change in which spec
               • open questions the new stuff raises
──────────────────────────────────────────────────────────────
5. REVIEW    ← YOU. A human. See below.
──────────────────────────────────────────────────────────────
6. UPDATE    applies what you approved to the spec docs,
             re-hashes the sources, clears the STALE flags
```

---

## Step 5 — your part (the only part)

You get a **proposed changeset** — a plain list. For each item you do one of three things:

- ✅ **Accept** — it's right, apply it
- ✏️ **Edit** — mostly right, fix the wording
- ❌ **Reject** — not a real finding, drop it (or leave it parked in `_inbox`)

You are **not writing synthesis from scratch.** You're judging drafts. If you don't know,
leave it in `_inbox` — "don't know yet" is a valid answer.

**The one rule:** a finding needs a source. If a proposed change has no link back to
evidence, reject it — that's a guess wearing a fact's clothes.

---

## Done when

- Every new item is shelved or parked.
- The specs you touched show `drift: FRESH` again.
- Anything you couldn't resolve is a named **open question** (becomes next week's work,
  or a research brief).

---

*Gather is automatic. Judgment is yours. If you can click Accept/Edit/Reject, you can run this.*
