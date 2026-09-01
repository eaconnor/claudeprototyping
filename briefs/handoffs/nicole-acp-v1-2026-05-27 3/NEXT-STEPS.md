# Next Steps — ACP V1 Pipeline

**For:** Nicole · **From:** Beth (via Band Protocol pipeline) · **Date:** 2026-05-27

---

## Three calls only you can make

These cannot be made by spec, build, critic, or this Claude session. They are strategic calls that the prototype surfaces but does not resolve.

### 1 · Narrative

> **ACP-First** (replaces UEM/Cove/Adlumin) or **ACP-via-Bridge** (rides inside N-central)?

Both your Confluence docs are right; they disagree. The prototype can show either. The room will ask. Engineering and Sales need the same answer.

- If **ACP-First**: V1 demo emphasizes Dashboard, Coworkers, Value Ledger as a standalone front door. UEM/Cove/Adlumin become engines underneath.
- If **ACP-via-Bridge**: V1 demo emphasizes the Chrome Extension overlay model. ACP appears inside N-central. Sales motion is an N-central upsell.

Pipeline next move depends on this answer.

### 2 · Demo audience

> Is this prototype for **you + ACP exec review only**, or also for **MSP design partners**?

- Internal review tolerates the open questions in the rail.
- Design partner needs a cleaner front, no rail, and likely a tighter screen subset.

If both: we build two surfaces (the rail comes off for design-partner version).

### 3 · Value Ledger lock

> **V1 or V2?**

The brief marks Ledger as `[A]` (assumption). The prototype includes it as if `[R]`. Reconcile.

- If **V1**: the rail's "what you nailed" reading holds. Ledger is the differentiation spine.
- If **V2**: cut the Ledger view, soften the chargeback math, accept that V1 looks like "another ops console with AI in it."

---

## What happens after you answer

The pipeline can re-run with your answers baked in:

```
[Nicole's three answers]
  → re-spec (update Gate 2 scope, re-tag claims, lock or cut Ledger)
    → re-critic (verify Bridge collision is resolved, check tag ratio)
      → re-build (update prototype to single narrative, single audience target)
        → critic (final pass)
          → handoff (this packet, refreshed)
```

Estimated cost: one FEAST session.

To trigger: send the three answers to Beth. Beth runs the pipeline.

---

## Out of scope for this pipeline cycle

The following are **not** what the pipeline will do without explicit direction:

- Build V2.
- Change the source Confluence docs.
- Run user research with MSP customers (that's Research's owned work — see `bradley-rail.md` §Research).
- Land canonical Apex tokens (that's Eng's owned work — see `bradley-rail.md` §Eng).
- Make the three Nicole-only calls for you.

---

## Open questions the pipeline cannot answer

| Question | Owner | What needs to happen |
|---|---|---|
| Joint ownership: ACP team or Bridge team or both? | Nicole + Bryce + Patrick | Conversation, then doc the answer |
| Is ACP V1 in Bridge's 2026.4 sprint, or follow-on? | Mike Adler | Scope decision |
| Apex token source-of-truth path | Eng | Confirm Figma → bridge-tokens.css pipeline applies |
| Trust-level mental model — which of three? | Research, after a 10-second test | 5–8 MSP techs per segment |
| Value Ledger audience — MSP-facing, customer-facing, both? | Research, with 5–8 MSP customers | Show the Ledger, ask the question |

---

## What you can do right now in Claude

If you open this folder in Claude Code:

- **"Read the handoff and the brief"** — Claude reads `HANDOFF.md` + `acp-v1.brief.md`, summarizes back.
- **"Walk me through the prototype"** — Claude opens `acp-v1-prototype.html`, describes screens.
- **"What does Beth not know that I do?"** — capture your edits to the rail, the brief, or any of the routed cards. Save as a new .md in this folder.
- **"Update the brief: I want the Value Ledger in V1"** — Claude updates `acp-v1.brief.md` to flip the relevant `[A]` to `[R: Nicole]` and notes the decision in the brief's change log.
- **"Re-spec assuming ACP-First narrative"** — Claude re-runs spec with that constraint, surfaces conflicts in current build.

The brief is editable. The rail is editable. The prototype is editable. The pipeline is re-runnable.

---

*Three calls. Then the work routes.*
